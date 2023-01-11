#!/bin/bash
apk add openjdk11
mkdir -p /opt/dvd/services/vulns/java/
interfaceJavaURL="https://github.com/DairodR/Benchmark-Repo-Features/tree/develop/Features/vulnerabilities/javaInterface/"
cd /tmp/javaInterface/
# Normal java files
wget "${interfaceJavaURL}CommandInjection/commandInjection.jar" -O CommandInjection.jar 
wget "${interfaceJavaURL}PathTraversal/pathTraversal.jar" -O PathTraversal.jar 
wget "${interfaceJavaURL}SQLInjection/sqlInjection.jar" -O SQLInjection.jar 
mv /tmp/javaInterface/*  /opt/dvd/services/vulns/java/
chmod -R +x /opt/dvd/services/vulns/java/
chmod -R +s /opt/dvd/services/vulns/java/
rm /opt/dvd/services/vulns/java/addJavaInterface.sh