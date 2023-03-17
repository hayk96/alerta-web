#!/bin/bash
set -e

ADMIN_USER=${ADMIN_USERS%%,*}
ADMIN_PASSWORD=${ADMIN_PASSWORD:-admin}
MAXAGE=${ADMIN_KEY_MAXAGE:-315360000}  # default=10 years

# Init admin users and API keys
if [ -n "${ADMIN_USERS}" ]; then
  echo "# Create admin users."
  alertad user --all --password "${ADMIN_PASSWORD}" || true
  echo "# Create admin API keys."
  alertad key --all

  # Create user-defined API key, if required
  if [ -n "${ADMIN_KEY}" ]; then
    echo "# Create user-defined admin API key."
    alertad key --username "${ADMIN_USER}" --key "${ADMIN_KEY}" --duration "${MAXAGE}"
  fi
fi

exec "$@"
