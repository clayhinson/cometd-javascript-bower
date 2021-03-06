#!/bin/bash

# updates the JS from the master branch by building the demo package
git clone https://github.com/cometd/cometd.git
cd cometd
mvn package -pl cometd-demo -am -Dmaven.test.skip=true && \
cp -Rv cometd-javascript/common/target/cometd-javascript-common-*/org . && \
cd ..
rm -rf cometd
git status
