#!/bin/bash
set -e

if [ "$1" = 'bash' ]; then
    $@
else
    app $@
fi
