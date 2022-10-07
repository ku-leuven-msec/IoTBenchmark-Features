#!/bin/bash
apk add openjdk11
mkdir -p /opt/dvd/code/java/
mkdir -p /opt/dvd/services/vulns/java/
mv /tmp/java/interface/*  /opt/dvd/services/vulns/java/
mv /tmp/java/* /opt/dvd/code/java/
chmod -R +x /opt/dvd/code/java/
chmod -R +s /opt/dvd/code/java/
chmod -R +x /opt/dvd/services/vulns/java/
chmod -R +s /opt/dvd/services/vulns/java/
rm /opt/dvd/code/java/addJava.sh