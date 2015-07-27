#!/bin/bash

# updates the JS from the master branch by building the demo package
git clone -b 3.0.5 --single-branch https://github.com/cometd/cometd.git

cat ./cometd/cometd-javascript/common/src/main/js/org/cometd/cometd-namespace.js \
      ./cometd/cometd-javascript/common/src/main/js/org/cometd/CometD.js \
      ./cometd/cometd-javascript/common/src/main/js/org/cometd/cometd-amd.js \
      ./cometd/cometd-javascript/common/src/main/js/org/cometd/cometd-header.js \
      ./cometd/cometd-javascript/common/src/main/js/org/cometd/cometd-json.js \
      ./cometd/cometd-javascript/common/src/main/js/org/cometd/LongPollingTransport.js \
      ./cometd/cometd-javascript/common/src/main/js/org/cometd/RequestTransport.js \
      ./cometd/cometd-javascript/common/src/main/js/org/cometd/Transport.js \
      ./cometd/cometd-javascript/common/src/main/js/org/cometd/TransportRegistry.js \
      ./cometd/cometd-javascript/common/src/main/js/org/cometd/Utils.js \
      ./cometd/cometd-javascript/common/src/main/js/org/cometd/CallbackPollingTransport.js \
      ./cometd/cometd-javascript/common/src/main/js/org/cometd/WebSocketTransport.js \
      ./cometd/cometd-javascript/jquery/src/main/webapp/jquery/jquery.cometd.js \
      ./cometd/cometd-javascript/jquery/src/main/webapp/jquery/jquery.cometd-ack.js \
      ./cometd/cometd-javascript/jquery/src/main/webapp/jquery/jquery.cometd-reload.js \
      ./cometd/cometd-javascript/jquery/src/main/webapp/jquery/jquery.cometd-timestamp.js \
      ./cometd/cometd-javascript/jquery/src/main/webapp/jquery/jquery.cometd-timesync.js > ./dist/cometd.js

rm -rf cometd
