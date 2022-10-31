#!/bin/bash
mkdir -p /opt/dvd/code/bash/
bashURL="${VulnerabilitiesURL}bash/"
wget "${bashURL}CommandInjection/vulnerablebash.sh" -O CommandInjection.sh
mv ./CommandInjection.sh /opt/dvd/code/bash/
chmod -R +x /opt/dvd/code/bash/
chmod -R +s /opt/dvd/code/bash/
