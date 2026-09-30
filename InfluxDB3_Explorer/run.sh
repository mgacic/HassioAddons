#!/bin/sh
set -e

# Extract options from Home Assistant options.json
if [ -f /data/options.json ]; then
    INFLUXDB_URL=$(jq --raw-output '.influxdb_url // empty' /data/options.json)
    ADMIN_TOKEN=$(jq --raw-output '.admin_token // empty' /data/options.json)
    
    export INFLUX_URL="$INFLUXDB_URL"
    export INFLUX_TOKEN="$ADMIN_TOKEN"
fi

# Pass any extra arguments or start the UI
# The official entrypoint is ./entrypoint.sh inside /app-root
cd /app-root
exec su-exec influxui ./entrypoint.sh --mode=admin
