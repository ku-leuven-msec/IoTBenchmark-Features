#!/bin/bash
apk add openjdk11
mkdir -p /opt/dvd/code/java/
mv /tmp/java/* /opt/dvd/code/java/
chmod -R +x /opt/dvd/code/java/
chmod -R +s /opt/dvd/code/java/
rm /opt/dvd/code/java/addJava.sh