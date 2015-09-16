#!/bin/bash

# Generate a unique identifier string.

RSTRING="$(openssl rand -hex 3)"
RSHORT="$(echo $RSTRING | head -c 4)"
echo "Generating unique identifier: $RSTRING"
echo "Using unique hostname suffix: $RSHORT"
echo ""

# Kludge for the time being.
# Lets us see the random string/identifier without
# actually kicking off all of the stuff.
if [ $# -gt 0 ]; then
    exit 0
fi

###
# Vivid
###
xterm -bg black -fg white -T "[Ubuntu Vivid: 64-bit]" -geometry 100x10 -e "docker run --rm -it -h vivid-x64-$RSHORT unidata/ncci:vivid-x64"&
sleep 3

xterm -bg black -fg white -T "[Ubuntu Vivid: 32-bit]" -geometry 100x10 -e "docker run --rm -it -h vivid-x86-$RSHORT unidata/ncci:vivid-x86"&
sleep 3

###
# Utopic
###
xterm -bg black -fg white -T "[Ubuntu Utopic: 64-bit]" -geometry 100x10 -e "docker run --rm -it -h utopic-x64-$RSHORT unidata/ncci:utopic-x64"&
sleep 3

xterm -bg black -fg white -T "[Ubuntu Utopic: 32-bit]" -geometry 100x10 -e "docker run --rm -it -h utopic-x86-$RSHORT unidata/ncci:utopic-x86"&
sleep 3

###
# Trusty
###
xterm -bg black -fg white -T "[Ubuntu Trusty: 64-bit]" -geometry 100x10 -e "docker run --rm -it -h trusty-x64-$RSHORT unidata/ncci:trusty-x64"&
sleep 3

xterm -bg black -fg white -T "[Ubuntu Trusty: 32-bit]" -geometry 100x10 -e "docker run --rm -it -h trusty-x86-$RSHORT unidata/ncci:trusty-x86"&
sleep 3

###
# Trusty - Parallel
###
xterm -bg black -fg white -T "[Ubuntu Trusty OpenMPI: 64-bit]" -geometry 100x10 -e "docker run --rm -it -h trusty-x64-$RSHORT unidata/ncci:trusty-openmpi-x64"&

xterm -bg black -fg white -T "[Ubuntu Trusty MPICH: 64-bit]" -geometry 100x10 -e "docker run --rm -it -h trusty-x64-$RSHORT unidata/ncci:trusty-mpich-x64"&


###
# Fedora
###
xterm -bg black -fg white -T "[Fedora 22: 64-bit]" -geometry 100x10 -e "docker run --rm -it -h fedora22-x64-$RSHORT unidata/ncci:fedora22-x64"&
sleep 3

xterm -bg black -fg white -T "[Fedora 21: 64-bit]" -geometry 100x10 -e "docker run --rm -it -h fedora21-x64-$RSHORT unidata/ncci:fedora21-x64"&
sleep 3

###
# Centos
###
xterm -bg black -fg white -T "[Centos 7: 64-bit]" -geometry 100x10 -e "docker run --rm -it -h centos7-x64-$RSHORT unidata/ncci:centos7-x64"&
sleep 3
