#!/bin/sh

set -eux

echo 'This in an entrypoint script'
echo "My custom env var : $IMAGE_CUSTOM_ENV"

exec "$@"
