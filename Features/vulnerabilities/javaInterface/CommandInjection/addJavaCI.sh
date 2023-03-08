#!/bin/bash
apk add openjdk11
interfaceJavaURL="${VulnerabilitiesURL}javaInterface/"
wget "${interfaceJavaURL}CommandInjection/commandInjection.jar" -O CommandInjection.jar 
mkdir -p /opt/dvd/services/vulns/java/
mv ./CommandInjection.jar  /opt/dvd/services/vulns/java/CommandInjection.jar 
chmod -R +x /opt/dvd/services/vulns/java/
chmod -R +s /opt/dvd/services/vulns/java/