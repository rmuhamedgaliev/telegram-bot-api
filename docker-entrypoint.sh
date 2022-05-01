#!/bin/sh
set -e

USERNAME=telegram-bot-api
GROUPNAME=telegram-bot-api

chown ${USERNAME}:${GROUPNAME} "${TELEGRAM_WORK_DIR}"

if [ -n "${1}" ]; then
  exec "${*}"
fi

COMMAND="telegram-bot-api --dir=${TELEGRAM_WORK_DIR} --temp-dir=${TELEGRAM_TEMP_DIR} --username=${USERNAME} --groupname=${GROUPNAME} ${BOT_API_ARGS}"

echo "$COMMAND"
# shellcheck disable=SC2086
exec $COMMAND
