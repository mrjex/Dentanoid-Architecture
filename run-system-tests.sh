#!/bin/bash

# Master script to run all Dentanoid system tests
# This script assumes it's being run from the 'Architecture' directory.

SYSTEM_TESTS_DIR="./system-tests"

# Define Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}===== Starting Dentanoid System Checks from '$SYSTEM_TESTS_DIR' =====${NC}"
echo ""

# Function to run a single test script
run_test() {
    local script_name=$1
    local script_path="$SYSTEM_TESTS_DIR/$script_name"

    echo -e "${BLUE}Running: $script_name...${NC}"

    if [ -f "$script_path" ]; then
        # Execute the script and capture its exit code
        bash "$script_path"
        local exit_code=$?

        if [ $exit_code -eq 0 ]; then
            echo -e "${GREEN}PASS: $script_name completed successfully.${NC}"
        else
            echo -e "${RED}FAIL: $script_name failed with exit code $exit_code.${NC}"
        fi
    else
        echo -e "${RED}FAIL: Script $script_path not found.${NC}"
    fi
    echo "" # Newline for separation
}

# Explicitly run each test script
run_test "api-gateways.sh"
run_test "mqtt-broker.sh"
run_test "backend-services.sh"

echo -e "${BLUE}===== Dentanoid System Checks Complete =====${NC}"
echo "Review the output above." 