#!/bin/bash
#rm -rd /home/daniel/Dev/lib/wildfly-10.1.0.Final/standalone/deployments/formulario-web*
# cd ~/git/formulario-ws/ && copy-war-to-wildfly-deployments . formulario-ws 
#cd ~/git/formulario-web/ && copy-war-to-wildfly-deployments . formulario-web 
# export CUBE_TENANT_DEFAULT=RgNcOcBsUgFKr_Jx7Hdlgg== MULTI_TENANCY_ENABLED=false 
# start-wildfly standalone.hpmsp.xml 

. initialize-pmsp-integracao-ws-environment-variables
cd ~/git/integracao-ws
mvn clean package install
cd target/
java -jar -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8091,suspend=n integracao-ws-1.2.14.jar
