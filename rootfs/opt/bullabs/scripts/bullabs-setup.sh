#!/bin/bash

# shellcheck disable=SC1091

set -o errexit
set -o nounset
set -o pipefail
# set -o xtrace # Uncomment this line for debugging purposes

# Load Redis environment variables
. /opt/bullabs/scripts/bullabs-env.sh

# Load libraries
. /opt/bullabs/scripts/libos.sh
. /opt/bullabs/scripts/libfs.sh

# Ensure bullabs daemon user exists when running as root
if am_i_root; then
    ensure_user_exists "$BULLABS_DAEMON_USER" --group "$BULLABS_DAEMON_GROUP"
    configure_permissions_ownership "$BULLABS_ROOT_DIR" -u "$BULLABS_DAEMON_USER" -g "$BULLABS_DAEMON_GROUP"
fi
