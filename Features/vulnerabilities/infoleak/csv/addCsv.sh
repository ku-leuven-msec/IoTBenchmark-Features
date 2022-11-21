#!/bin/bash
info="${VulnerabilitiesURL}infoleak/csv/"
wget "${info}.info.csv" -O .info.csv
mv .info.csv /home/manager/
