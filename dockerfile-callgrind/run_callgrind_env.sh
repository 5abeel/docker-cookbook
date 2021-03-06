#!/bin/bash
#
if [ $# -lt 2 ]; then
    docker images
    echo ""
    echo "You must specify an OS and a docker image."
    echo "example: $0 linux wardf/callgrind"
    echo "OS Options:"
    echo -e "\tlinux"
    echo -e "\tosx"
    exit 1
fi

set -x



##
# The following is used on OSX.
# It may or may not work on Linux or Windows.
# Will update as need be.
#
# Note, also, that when using `boot2docker`, the volume mount
# will not work unless $(pwd) is a subdirectory of $HOME.
#
# Finally, on OSX, we must also be using socat. See USAGE.md
# for more information.
##

if [ "X$1" == "Xosx" ]; then
    MYIP=$(curl ipecho.net/plain)
    docker run --rm -it -v $(pwd):/workdir -e DISPLAY=$MYIP:0 --net=host $2
fi

if [ "X$1" == "Xlinux" ]; then
    docker run --rm -it -v $(pwd):/workdir -e DISPLAY --net=host -v $HOME/.Xauthority:/root/.Xauthority $2
fi
