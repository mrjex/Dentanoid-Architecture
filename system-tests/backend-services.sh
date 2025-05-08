#!/bin/bash

# Actively tests MQTT connectivity and basic responsiveness of backend services.
# Relies on 'mosquitto_pub' and 'mosquitto_sub' being installed.

MQTT_BROKER_HOST="localhost"
MQTT_BROKER_PORT="1883"
TIMEOUT_SECONDS=3 # How long to wait for a response

# Define Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}--- MQTT Backend Service Active Checks ---${NC}"

# Check for mosquitto_clients
if ! command -v mosquitto_pub &> /dev/null || ! command -v mosquitto_sub &> /dev/null; then
    echo -e "${RED}Error: 'mosquitto_pub' and/or 'mosquitto_sub' not found. Please install mosquitto-clients.${NC}"
    echo -e "${YELLOW}Skipping active MQTT tests.${NC}"
    exit 1
fi

echo "Using MQTT Broker: $MQTT_BROKER_HOST:$MQTT_BROKER_PORT"
echo ""

SERVICES=(
    "Appointment-Service-Go"
    "Clinic-Service"
    "Monitoring-Service"
    "Notification-Service"
    "User-Service"
)

TEST_ID=$(date +%s%N) # Unique ID for this test run

for SERVICE_NAME in "${SERVICES[@]}"; do
    echo -e "${BLUE}Testing $SERVICE_NAME...${NC}"
    
    REQUEST_TOPIC="dentanoid/test/$SERVICE_NAME/ping"
    RESPONSE_TOPIC="dentanoid/test/$SERVICE_NAME/pong"
    PAYLOAD="{\"test_run_id\": \"$TEST_ID\", \"service_target\": \"$SERVICE_NAME\", \"timestamp\": \"$(date -uIs)\"}"

    echo "  Publishing to: $REQUEST_TOPIC"
    echo "  Payload: $PAYLOAD"
    echo "  Listening for response on: $RESPONSE_TOPIC (for $TIMEOUT_SECONDS seconds)"

    # Listen in the background
    RESPONSE_RECEIVED=""
    mosquitto_sub -h "$MQTT_BROKER_HOST" -p "$MQTT_BROKER_PORT" -t "$RESPONSE_TOPIC" -C 1 -W $TIMEOUT_SECONDS 2>/dev/null | while read -r line; do
        RESPONSE_RECEIVED="$line"
    done &
    SUB_PID=$!

    # Give subscriber a moment to start
    sleep 0.2

    # Publish the test message
    mosquitto_pub -h "$MQTT_BROKER_HOST" -p "$MQTT_BROKER_PORT" -t "$REQUEST_TOPIC" -m "$PAYLOAD" -q 1

    # Wait for the subscriber to finish or timeout
    wait $SUB_PID
    
    if [ -n "$RESPONSE_RECEIVED" ]; then
        echo -e "  ${GREEN}PASS: Received response from $SERVICE_NAME:${NC} $RESPONSE_RECEIVED"
    else
        echo -e "  ${YELLOW}INFO: No direct response on $RESPONSE_TOPIC for $SERVICE_NAME within $TIMEOUT_SECONDS s.${NC}"
        echo -e "  ${YELLOW}      -> Check logs of $SERVICE_NAME for processing of message on $REQUEST_TOPIC (Test ID: $TEST_ID).${NC}"
    fi
    echo ""
done

echo -e "${BLUE}--- MQTT Backend Service Active Checks Complete ---${NC}"