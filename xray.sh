#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d5a0d20e-3324-4470-b109-3bffaf6db933"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

