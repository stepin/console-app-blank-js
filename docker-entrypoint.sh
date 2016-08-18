#!/bin/bash
set -e

if [ "$1" = 'bash' ]; then
    exec "$@"
fi

exec app "$@"
