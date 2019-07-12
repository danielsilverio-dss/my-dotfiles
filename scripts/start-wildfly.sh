#!/bin/sh

STANDALONE=$1

cd ~/Dev/lib/wildfly-10.1.0.Final/bin/ \
&& ./standalone.sh --debug -c $STANDALONE 
