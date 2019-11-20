#!/usr/bin/env bash

set -e

[ "$(ls -A /plugins)" ] && cp -f /plugins/* /tshock/ServerPlugins
exec mono --server --gc=sgen -O=all TerrariaServer.exe -configpath /config -worldpath /world -logpath /logs "$@" -maxplayers 50