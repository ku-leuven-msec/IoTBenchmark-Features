#!/bin/bash
mkdir -p /opt/dvd/code/bash/
bashURL="${VulnerabilitiesURL}bash/"
wget "${bashURL}PathTraversal/pathTraversal.sh" -O PathTraversal.sh 
mv ./PathTraversal.sh /opt/dvd/code/bash/
chmod -R +x /opt/dvd/code/bash/
chmod -R +s /opt/dvd/code/bash/
