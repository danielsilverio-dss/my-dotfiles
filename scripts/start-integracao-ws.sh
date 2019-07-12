#!/bin/bash

. initialize-pmsp-integracao-ws-environment-variables
cd ~/git/integracao-ws
mvn clean package install
cd target/
java -jar -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8091,suspend=n integracao-ws-1.2.14.jar
