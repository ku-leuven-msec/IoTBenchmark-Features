#!/bin/bash
apk add openjdk11
interfaceJavaURL="${VulnerabilitiesURL}javaInterface/"
wget "${interfaceJavaURL}PathTraversal/pathTraversal.jar" -O PathTraversal.jar 
mkdir -p /opt/dvd/services/vulns/java/
mv ./PathTraversal.jar  /opt/dvd/services/vulns/java/PathTraversal.jar  
