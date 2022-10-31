#!/bin/bash
apk add openjdk11
javaURL="${VulnerabilitiesURL}java/"
wget "${javaURL}Deserialization/deserialization.jar" -O Deserialization.jar 
mkdir -p /opt/dvd/code/java/
mv ./Deserialization.jar  /opt/dvd/code/java/Deserialization.jar  
chmod -R +x /opt/dvd/code/java/
chmod -R +s /opt/dvd/code/java/
