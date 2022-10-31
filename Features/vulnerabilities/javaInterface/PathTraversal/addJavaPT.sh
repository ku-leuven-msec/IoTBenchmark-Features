#!/bin/bash
apk add openjdk11
interfaceJavaURL="${VulnerabilitiesURL}interface/"
wget "${interfaceJavaURL}PathTraversal/PathTraversal.jar" -O PathTraversal.jar 
mkdir -p /opt/dvd/services/vulns/java/
mv ./PathTraversal.jar  /opt/dvd/services/vulns/java/PathTraversal.jar  
/opt/dvd/services/vulns/java/