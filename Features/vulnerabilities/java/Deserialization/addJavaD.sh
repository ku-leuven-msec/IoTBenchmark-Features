#!/bin/bash
apk add openjdk11
javaURL="https://github.com/DairodR/Benchmark-Repo-Features/blob/develop/Features/vulnerabilities/java/"
wget "${javaURL}Deserialization/deserialization.jar" -O Deserialization.jar 
mkdir -p /opt/dvd/code/java/
mv ./Deserialization.jar  /opt/dvd/code/java/Deserialization.jar  
chmod -R +x /opt/dvd/code/java/
chmod -R +s /opt/dvd/code/java/
