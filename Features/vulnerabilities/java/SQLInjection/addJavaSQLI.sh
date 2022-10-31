#!/bin/bash
apk add openjdk11
javaURL="${VulnerabilitiesURL}java/"
wget "${javaURL}SQLInjection/sqlInjection.jar" -O SQLInjection.jar 
wget "${javaURL}SQLInjection/login.db" -O login.db 
mkdir -p /opt/dvd/code/java/
mv ./SQLInjection.jar  /opt/dvd/code/java/SQLInjection.jar  
mv ./login.db  /opt/dvd/code/java/login.db  
chmod -R +x /opt/dvd/code/java/
chmod -R +s /opt/dvd/code/java/
