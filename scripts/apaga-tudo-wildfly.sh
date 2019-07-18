#!/bin/sh

. ~/env/wildfly-configuration.sh

cd $WILDFLY_DEPLOYMENTS \
&& rm -rf *.war* \
&& cd $WILDFLY_HOME/standalone/ && rm -rf tmp/
