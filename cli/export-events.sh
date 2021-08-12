#!/bin/bash

set -e

if [ $# -eq 0 ]; then
    echo "No file to export to is given."
    exit 1
fi

export PGPASSWORD="$DATASTORE_DATABASE_PASSWORD"
pg_dump -c --if-exists -h "$DATASTORE_DATABASE_HOST" -p "$DATASTORE_DATABASE_PORT" -U "$DATASTORE_DATABASE_USER" -d "$DATASTORE_DATABASE_NAME" > $1