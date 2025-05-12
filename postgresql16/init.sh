#!/usr/bin/env bash
set -e

echo "Starting PostgreSQL..."

exec docker-entrypoint.sh postgres

