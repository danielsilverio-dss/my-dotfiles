#!/bin/sh

cd ~/Dev/lib/wildfly-10.1.0.Final/standalone/deployments \
&& rm -rf *.war* \
&& cd ~/Dev/lib/wildfly-10.1.0.Final/standalone/ && rm -rf tmp/
