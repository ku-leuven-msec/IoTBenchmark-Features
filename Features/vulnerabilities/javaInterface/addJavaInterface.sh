#!/bin/bash
apk add openjdk11
mkdir -p /opt/dvd/services/vulns/java/
interfaceJavaURL="${VulnerabilitiesURL}interface/"
cd /tmp/java/
# Normal java files
wget "${interfaceJavaURL}CommandInjection/CommandInjection.jar" -O CommandInjection.jar 
wget "${interfaceJavaURL}PathTraversal/PathTraversal.jar" -O PathTraversal.jar 
wget "${interfaceJavaURL}SQLInjection/sqlInjection.jar" -O SQLInjection.jar 
mv /tmp/java/*  /opt/dvd/services/vulns/java/
chmod -R +x /opt/dvd/services/vulns/java/
chmod -R +s /opt/dvd/services/vulns/java/
rm /opt/dvd/code/java/addJavaInerface.sh