#!/bin/bash
info="${VulnerabilitiesURL}infoleak/db/"
wget "${info}login.db" -O login.db
mv ./login.db /home/manager/
