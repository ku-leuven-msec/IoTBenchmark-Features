#!/bin/bash
apk add openjdk11
interfaceJavaURL="${VulnerabilitiesURL}interface/"
wget "${interfaceJavaURL}SQLInjection/sqlInjection.jar" -O SQLInjection.jar 
wget "${interfaceJavaURL}SQLInjection/login.db" -O login.db 
mkdir -p /opt/dvd/services/vulns/java/
mv ./SQLInjection.jar  /opt/dvd/services/vulns/java/SQLInjection.jar  
mv ./login.db /opt/dvd/services/vulns/java/login.db  
/opt/dvd/services/vulns/java/