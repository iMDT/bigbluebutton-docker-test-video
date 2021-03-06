#!/bin/bash
JOIN_URL="${1}"

if [ -z "$JOIN_URL" ]; then
    echo "Usage: $0 JOIN_URL";
    exit 1;
fi;

#Create temp dir
mkdir -m 777 /tmp/bigbluebutton-docker-test-video/ &> /dev/null || true

docker run --rm -v/tmp/bigbluebutton-docker-test-video/:/debug/ bigbluebutton-docker-test-video "${JOIN_URL}" && echo 1 || echo 0
