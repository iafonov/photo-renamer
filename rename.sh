#!/bin/bash

for i in *.jpg; 
do 
    mv "$i" photo`./jhead $i | grep Date/Time | grep -oP "\d{4}:\d{2}:\d{2} \d{2}:\d{2}:\d{2}" | perl -ne '$i = s/[: ]//g;print;'`.jpg; 
done

