#!/bin/bash
apk add openjdk11
javaURL="https://github.com/DairodR/Benchmark-Repo-Features/raw/redesign/Features/vulnerabilities/java/"
wget "${javaURL}CommandInjection/CommandInjection.jar" -O CommandInjection.jar 
mkdir -p /opt/dvd/code/java/
mv ./CommandInjection.jar  /opt/dvd/code/java/CommandInjection.jar 
chmod -R +x /opt/dvd/code/java/
chmod -R +s /opt/dvd/code/java/
