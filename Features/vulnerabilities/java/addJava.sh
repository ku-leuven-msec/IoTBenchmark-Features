#!/bin/bash
apk add openjdk11
mkdir -p /opt/dvd/code/java/
mkdir -p /opt/dvd/vulns/java/
mv /tmp/java/interface/*  /opt/dvd/vulns/java/
mv /tmp/java/* /opt/dvd/code/java/
chmod -R +x /opt/dvd/code/java/
chmod -R +s /opt/dvd/code/java/
chmod -R +x /opt/dvd/vulns/java/
chmod -R +s /opt/dvd/vulns/java/
rm /opt/dvd/code/java/addJava.sh