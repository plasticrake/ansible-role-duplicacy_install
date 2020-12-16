#!/bin/sh
if [ $(command -v apt-get) ]; then apt-get update && apt-get install -y python-minimal; \
    elif [ $(command -v dnf) ]; then dnf makecache && dnf --assumeyes install python python-devel python2-dnf; \
    elif [ $(command -v yum) ]; then yum makecache fast && yum install -y python; \
    elif [ $(command -v zypper) ]; then zypper refresh && zypper install -y python; \
    elif [ $(command -v apk) ]; then apk update && apk add --no-cache python; \
    elif [ $(command -v xbps-install) ]; then xbps-install -Syu && xbps-install -y python; \
    elif [ $(command -v pkg) ]; then pkg update && pkg install -y python; fi