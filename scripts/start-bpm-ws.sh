#!/bin/bash

. initialize-bpm-environment-variables 
cd ~/git/metasix/bpm-ws
mvn clean package install
cd target/
java -jar -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=80922,suspend=n bpm-ws-swarm.jar
