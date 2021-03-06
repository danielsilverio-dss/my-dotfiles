#!/bin/sh

PROJECTPATH=$1
PROJECTNAME=$2

cd $PROJECTPATH && mvn package \
&& cp target/$PROJECTNAME.war ~/Dev/lib/wildfly-10.1.0.Final/standalone/deployments/ \
&& cd ~/Dev/lib/wildfly-10.1.0.Final/bin/ \
&& ./standalone.sh -c standalone.hpmsp.xml 
