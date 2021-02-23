#!/bin/bash -e

# shellcheck disable=SC1091

set -o errexit
set -o nounset
set -o pipefail
# set -o xtrace # Uncomment this line for debugging purpose

# Load environment variables
. /opt/bullabs/scripts/bullabs-env.sh

# Load libraries
. /opt/bullabs/scripts/libbullabs.sh
. /opt/bullabs/scripts/liblog.sh

print_welcome_page

if [[ "$*" = *"/opt/bullabs/scripts/redis/run.sh"* || "$*" = *"/run.sh"* ]]; then
    info "** Starting {APPNAME} setup **"
    /opt/bullabs/scripts/{APPNAME}/setup.sh
    info "** {APPNAME} setup finished! **"
fi

echo ""
exec "$@"
