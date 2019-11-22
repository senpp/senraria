#!/usr/bin/env bash

set -e

[ "$(ls -A /plugins)" ] && cp -f /plugins/* /tshock/ServerPlugins

if [[ ${AUTOCREATE} = 1 ]] && [[ ! -f /world/${WORLD_NAME}.wld ]]; then
    exec mono --server --gc=sgen -O=all TerrariaServer.exe -autocreate ${AUTOCREATE_WORLD_SIZE} -world ${WORLD_NAME}.wld -port 7777 -configpath /config -worldpath /world -logpath /logs "$@" -maxplayers 50
else
    exec mono --server --gc=sgen -O=all TerrariaServer.exe -configpath /config -worldpath /world -world /world/${WORLD_NAME}.wld -logpath /logs "$@" -maxplayers 50
fi