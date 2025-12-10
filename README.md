# Home Assistant Add-on: PostgreSQL 16

## Description
A simple and lightweight PostgreSQL 16 database add-on for Home Assistant. 

## Configuration

**Note**: The default username is `homeassistant` and the default database is `homeassistant`.

### Option: `postgres_db`
The name of the database to create.
- **Default**: `homeassistant`

### Option: `postgres_user`
The username for the database user.
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
2. Install the PostgreSQL 16 add-on.
3. Set configuration parameters in the Configuration tab.
4. Start the add-on.

## Network
The database listens on port `5432`.
