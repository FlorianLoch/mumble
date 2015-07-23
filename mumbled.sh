#!/bin/sh
if [ ! -f "/config/mumble-server.ini" ]
then
    echo "==> no custom mumble config provided - copying over default"
    cp /default-mumble-server.ini /config/mumble-server.ini
fi

murmurd -ini /config/mumble-server.ini -supw $MUMBLE_SUPW
murmurd -fg -ini /config/mumble-server.ini
