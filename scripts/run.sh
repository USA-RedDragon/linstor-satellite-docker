#!/bin/bash

set -x

if [[ ! -e /sys/module/drbd ]] ; then
    echo 'You need to have the "drbd" kernel module installed.' >/dev/stderr
    exit 1
fi

if [[ ! -e /sys/module/drbd_transport_tcp ]] ; then
    echo 'You need to have the "drbd_transport_tcp" kernel module installed.' >/dev/stderr
    exit 1
fi

exec "/usr/share/linstor-server/bin/Satellite" "--logs=/logs" "--config-directory=/config"
