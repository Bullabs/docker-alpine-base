#!/bin/bash

# shellcheck disable=SC1091

set -o errexit
set -o nounset
set -o pipefail
# set -o xtrace # Uncomment this line for debugging purposes

# Load environment variables
. /opt/bullabs/scripts/bullabs-env.sh

# Load libraries
. /opt/bullabs/scripts/libos.sh

info "** Starting {APPNAME} **"
if am_i_root; then
    # Repalce {SERVICENAME}
    exec su-exec "$BULLABS_DAEMON_USER" {SERVICENAME} 
else
    exec {SERVICENAME}
fi
