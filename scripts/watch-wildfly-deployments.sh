#!/bin/sh

. ~/env/wildfly-configuration.sh

watch ls -la $WILDFLY_DEPLOYMENTS
