#!/bin/bash

# updates the JS from the master branch by building the demo package
git clone -b 3.0.5 --single-branch https://github.com/cometd/cometd.git

cat ./cometd/cometd-javascript/jquery/src/main/webapp/jquery/jquery.cometd.js \
     ./cometd/cometd-javascript/jquery/src/main/webapp/jquery/jquery.cometd-ack.js \
     ./cometd/cometd-javascript/jquery/src/main/webapp/jquery/jquery.cometd-reload.js \
     ./cometd/cometd-javascript/jquery/src/main/webapp/jquery/jquery.cometd-timestamp.js \
     ./cometd/cometd-javascript/jquery/src/main/webapp/jquery/jquery.cometd-timesync.js > ./dist/cometd.js

rm -rf cometd
