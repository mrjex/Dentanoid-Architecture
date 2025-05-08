#!/bin/bash

# Script to check connectivity to core infrastructure components like MQTT broker

MQTT_BROKER_HOST="localhost" # Or your MQTT broker's hostname/IP
MQTT_BROKER_PORT="1883"    # Standard MQTT port

echo "--- Checking Core Infrastructure ---"

# Function to check port connectivity
check_port() {
    local service_name=$1
    local host=$2
    local port=$3

    echo -n "Checking $service_name connectivity ($host:$port)... "
    # Timeout after 2 seconds for nc. The &> /dev/null redirects both stdout and stderr.
    if nc -zv -w 2 "$host" "$port" &> /dev/null; then
        echo "PASS (Port $port is open)"
    else
        echo "FAIL (Port $port is not accessible or service is down)"
    fi
}

# --- MQTT Broker Check ---
echo ""
check_port "MQTT Broker" "$MQTT_BROKER_HOST" "$MQTT_BROKER_PORT"

# Add checks for other core infrastructure if any (e.g., a central database if directly accessible for checks)

echo ""
echo "--- Core Infrastructure Checks Complete ---"
echo "Note: This script only checks network reachability. Ensure services are functionally healthy." 