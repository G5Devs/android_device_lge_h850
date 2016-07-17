#!/bin/sh

set -e

export VENDOR=lge
export DEVICE=h850
export DEVICE_COMMON=g5-common
./../../$VENDOR/$DEVICE_COMMON/extract-files.sh $@
