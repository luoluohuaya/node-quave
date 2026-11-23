#!/bin/sh
set -e
sed -i "s/8080/${PORT:-8080}/g" config.json
exec xray run -config config.json




