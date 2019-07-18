#!/bin/sh

. ~/env/wildfly-configuration.sh

STANDALONE=$1

cd $WILDFLY_HOME/bin/ \
&& ./standalone.sh --debug localhost:8787 -c $STANDALONE 
