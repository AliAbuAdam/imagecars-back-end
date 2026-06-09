#!/usr/bin/env bash
# Запуск миграций stormberry. Креды берутся из окружения (см. .env / .env.example).
# Пример: DB_HOST_ADDRESS=... DB_PORT=... DB_NAME=... DB_USERNAME=... DB_PASSWORD=... ./.migrate.sh
set -euo pipefail

: "${DB_HOST_ADDRESS:?DB_HOST_ADDRESS is required}"
: "${DB_PORT:?DB_PORT is required}"
: "${DB_NAME:=postgres}"
: "${DB_SSL:=false}"
: "${DB_USERNAME:?DB_USERNAME is required}"
: "${DB_PASSWORD:?DB_PASSWORD is required}"

DB_HOST_ADDRESS="$DB_HOST_ADDRESS" \
DB_PORT="$DB_PORT" \
DB_NAME="$DB_NAME" \
DB_SSL="$DB_SSL" \
DB_USERNAME="$DB_USERNAME" \
DB_PASSWORD="$DB_PASSWORD" \
dart run stormberry migrate
