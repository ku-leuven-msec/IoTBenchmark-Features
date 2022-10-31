#!/bin/bash
apk add openjdk11
interfaceJavaURL="${VulnerabilitiesURL}interface/"
wget "${interfaceJavaURL}CommandInjection/CommandInjection.jar" -O CommandInjection.jar 
mkdir -p /opt/dvd/services/vulns/java/
mv ./CommandInjection.jar  /opt/dvd/services/vulns/java/CommandInjection.jar 
chmod -R +x /opt/dvd/services/vulns/java/
chmod -R +s /opt/dvd/services/vulns/java/