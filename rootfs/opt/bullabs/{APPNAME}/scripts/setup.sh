#!/bin/bash

# shellcheck disable=SC1091

set -o errexit
set -o nounset
set -o pipefail
# set -o xtrace # Uncomment this line for debugging purposes

# Load environment variables
. /opt/bullabs/scripts/bullabs-env.sh

# Load libraries

# Ensure {APPNAME} is initialized
