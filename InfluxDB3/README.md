# Home Assistant Add-on: InfluxDB 3

## Description
A high-performance InfluxDB 3 Core time-series database add-on for Home Assistant, powered by Apache Arrow, DataFusion, and Parquet.

## Configuration

### Option: `databases`
A list of database names to create. The add-on will automatically create any databases that do not exist on startup.
- **Default**: `["homeassistant"]`

**Example**:
```yaml
databases:
  - "homeassistant"
  - "sensors"
  - "energy"
```

### Option: `admin_token`
The administrative authentication token for InfluxDB 3. This token grants full administrative privileges to query, write, and manage databases.
- **Default**: `"apiv3_homeassistant_admin_token_secret_12345"` (Please change this in your production configuration!)
- **Note**: InfluxDB 3 tokens must start with `apiv3_` and provide at least 128 bits of entropy.

### Option: `node_id`
The unique identifier for this server instance.
- **Default**: `"node0"`

### Option: `log_filter`
Log filtering level for the InfluxDB 3 engine.
- **Default**: `"info"`
- **Options**: `"error"`, `"warn"`, `"info"`, `"debug"`

## Installation
1. Add this repository to your Home Assistant Add-on Store.
2. Install the **InfluxDB 3** add-on.
3. Configure your `admin_token` and any additional `databases` in the Configuration tab.
4. Start the add-on.

## Network
The database listens on port `8181` for HTTP requests, query endpoints, and Apache Arrow Flight API.

## Connecting from Home Assistant
You can point your Home Assistant InfluxDB integration or any HTTP/Arrow Flight client to:
- **Host**: `localhost` (or the add-on hostname `influxdb3` / container IP)
- **Port**: `8181`
- **Token**: The token configured in `admin_token`
- **Database**: The database name configured in `databases` (e.g. `homeassistant`)
