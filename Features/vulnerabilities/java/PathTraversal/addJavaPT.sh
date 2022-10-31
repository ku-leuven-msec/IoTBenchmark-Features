#!/bin/bash
apk add openjdk11
javaURL="${VulnerabilitiesURL}java/"
wget "${javaURL}PathTraversal/PathTraversal.jar" -O PathTraversal.jar 
mkdir -p /opt/dvd/code/java/
mv ./PathTraversal.jar  /opt/dvd/code/java/PathTraversal.jar  
chmod -R +x /opt/dvd/code/java/
chmod -R +s /opt/dvd/code/java/
