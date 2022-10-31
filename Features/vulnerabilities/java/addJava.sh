#!/bin/bash
apk add openjdk11
mkdir -p /opt/dvd/code/java/
javaURL="${VulnerabilitiesURL}java/"
cd /tmp/java/
# Normal java files
wget "${javaURL}CommandInjection/CommandInjection.jar" -O CommandInjection.jar 
wget "${javaURL}Deserialization/deserialization.jar" -O Deserialization.jar 
wget "${javaURL}PathTraversal/PathTraversal.jar" -O PathTraversal.jar 
wget "${javaURL}SQLInjection/sqlInjection.jar" -O SQLInjection.jar 
wget "${javaURL}SQLInjection/login.db" -O login.db 
mv /tmp/java/* /opt/dvd/code/java/
chmod -R +x /opt/dvd/code/java/
chmod -R +s /opt/dvd/code/java/
rm /opt/dvd/code/java/addJava.sh