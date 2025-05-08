#!/bin/bash

# Script to provide guidance and basic checks for backend microservices

echo "--- Troubleshooting Backend Microservices ---"
echo "Backend services (Appointment, Clinic, Monitoring, Notification, User) primarily use MQTT."
echo "Direct HTTP testing is often limited. Focus on container status, logs, and MQTT connectivity."
echo ""

# --- General Checks for ALL Backend Services ---
echo "1. Dockerized Services:"
echo "   - List running containers: docker ps"
echo "   - Check specific service logs: docker logs <container_name_or_id>"
echo "   - Ensure they are connected to the Docker network and can reach the MQTT broker."
echo ""
echo "2. Non-Containerized Services (if any):"
echo "   - Verify the service process is running on its host."
echo "   - Check service-specific logs for errors or successful MQTT connection messages."
echo ""
echo "3. MQTT Connection:"
echo "   - Most services log their MQTT connection status on startup."
echo "   - Use an MQTT client (e.g., MQTT Explorer, mosquitto_sub) to subscribe to topics the services might publish to (like status or heartbeats, if implemented) or publish test messages to topics they subscribe to."
echo ""

# --- Service-Specific Port Checks (Highly)
# Add any known ports services might listen on (e.g., for Prometheus metrics, debug).
# These are examples and might need adjustment based on actual service configurations.

SERVICE_PORTS=(
    "Appointment-Service:PORT_IF_ANY_DIRECT"  # Replace PORT_IF_ANY_DIRECT or remove if none
    "Clinic-Service:PORT_IF_ANY_DIRECT"       # Replace PORT_IF_ANY_DIRECT or remove if none
    "Monitoring-Service:PORT_IF_ANY_DIRECT"   # Replace PORT_IF_ANY_DIRECT or remove if none
    "Notification-Service:PORT_IF_ANY_DIRECT" # Replace PORT_IF_ANY_DIRECT or remove if none
    "User-Service:PORT_IF_ANY_DIRECT"         # Replace PORT_IF_ANY_DIRECT or remove if none
)

echo "4. Basic Port Reachability (if services expose any specific ports directly):"
echo "   (Requires 'nc' or similar tool. These are often for internal connections or metrics.)"
for sp_entry in "${SERVICE_PORTS[@]}"; do
    IFS=':' read -r service_name service_port <<< "$sp_entry"
    if [[ "$service_port" == "PORT_IF_ANY_DIRECT" || -z "$service_port" ]]; then
        echo "   - $service_name: No standard direct test port defined in this script. Check service logs/config."
    else
        # Assuming services run on localhost for this check, adjust if they are on different hosts
        echo -n "   Checking $service_name port ($service_port) on localhost... "
        if nc -zv -w 2 localhost "$service_port" &> /dev/null; then # Added -w 2 for timeout
            echo "OPEN"
        else
            echo "CLOSED or NOT REACHABLE"
        fi
    fi
done
echo ""
echo "--- Backend Service Troubleshooting Guide Complete ---"
echo "Remember: The most reliable way to check MQTT-based services is by observing their interaction with the MQTT broker and their logs." 