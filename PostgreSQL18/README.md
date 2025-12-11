
# Home Assistant Add-on: PostgreSQL 18

## Description
A simple and lightweight PostgreSQL 18 database add-on for Home Assistant.

## Configuration

**Note**: The default username is `homeassistant` and the default database is `homeassistant`.

### Option: `postgres_db`
A list of database names to create. The add-on will automatically create any databases that don't exist on startup.
- **Default**: `["homeassistant"]`

**Example**:
```yaml
postgres_db:
  - "homeassistant"
  - "n8n"
  - "myapp"
```

### Option: `postgres_user`
The username for the database user. This user will be the owner of all databases.
- **Default**: `homeassistant`

### Option: `postgres_password`
The password for the database user.
- **Default**: `password` (Please change this!)

### Option: `postgres_config`
A list of custom PostgreSQL configuration parameters. These are written directly to `postgresql.auto.conf` and override default settings.

**Example**:
```yaml
postgres_config:
  - "max_connections=100"
  - "shared_buffers=128MB"
  - "work_mem=4MB"
```

## Installation
1. Add this repository to your Home Assistant Add-on Store.
2. Install the PostgreSQL 18 add-on.
3. Configure the `postgres_password` in the Configuration tab.
4. Start the add-on.

## Network
The database listens on port `5432`.
