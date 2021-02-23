#!/bin/bash
#
# shellcheck disable=SC1091

# Load Generic Libraries
. /opt/bullabs/scripts/liblog.sh

# Constants
BOLD='\033[1m'

# Functions

########################
# Print the welcome page
# Globals:
#   DISABLE_WELCOME_MESSAGE
#   BULLABS_APP_NAME
# Arguments:
#   None
# Returns:
#   None
#########################
print_welcome_page() {
    if [[ -n "$BULLABS_APP_NAME" ]]; then
        print_image_welcome_page
    fi
}

########################
# Print the welcome page for a Bullabs Docker image
# Globals:
#   BULLABS_APP_NAME
# Arguments:
#   None
# Returns:
#   None
#########################
print_image_welcome_page() {
    local github_url="https://github.com/bullabs/docker-${BULLABS_APP_NAME}"

    log ""
    log "${BOLD}Welcome to the Bullabs ${BULLABS_APP_NAME} container${RESET}"
    log "Subscribe to project updates by watching ${BOLD}${github_url}${RESET}"
    log "Submit issues and feature requests at ${BOLD}${github_url}/issues${RESET}"
    log ""
}
