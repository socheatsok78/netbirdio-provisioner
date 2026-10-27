#!/bin/sh

ME=netbirdio-prune-proxy-peers
NETBIRD_DB_FILE=${NETBIRD_DB_FILE:-"/data/store.db"}

if [ ! -f "$NETBIRD_DB_FILE" ]; then
	echo "$ME: The database store.db does not exist, skipping..."
	exit 0
fi

echo "$ME: Pruning proxy peers from the database..."
sqlite3 "$NETBIRD_DB_FILE" "SELECT id, name, created_at FROM peers WHERE name LIKE 'proxy-%' ORDER BY created_at DESC;"
sqlite3 "$NETBIRD_DB_FILE" "DELETE FROM peers WHERE name LIKE 'proxy-%';"
