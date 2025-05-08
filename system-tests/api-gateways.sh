#!/bin/bash

# Script to check the health and basic endpoints of API Gateways

PATIENT_API_URL_BASE="http://localhost:3000"
DENTIST_API_URL_BASE="http://localhost:3001"

echo "--- Checking API Gateways ---"

# Function to check an endpoint
check_endpoint() {
    local api_name=$1
    local url=$2
    local expected_status_pattern=$3
    local endpoint_description=$4

    echo -n "Checking $api_name: $endpoint_description ($url)... "
    response_code=$(curl -s -o /dev/null -w "%{http_code}" "$url")

    if [[ "$response_code" =~ $expected_status_pattern ]]; then
        echo "PASS (HTTP $response_code)"
    else
        echo "FAIL (HTTP $response_code)"
    fi
}

# --- Patient API Checks ---
echo ""
echo "Patient API ($PATIENT_API_URL_BASE)"
check_endpoint "Patient API" "$PATIENT_API_URL_BASE/" "^2[0-9][0-9]$" "Root endpoint"
check_endpoint "Patient API" "$PATIENT_API_URL_BASE/clinics" "^(2[0-9][0-9]|404)$" "Get Clinics endpoint" # 404 is ok if no clinics but endpoint works


# --- Dentist API Checks ---
echo ""
echo "Dentist API ($DENTIST_API_URL_BASE)"
check_endpoint "Dentist API" "$DENTIST_API_URL_BASE/" "^2[0-9][0-9]$" "Root endpoint"


echo ""
echo "--- API Gateway Checks Complete ---"