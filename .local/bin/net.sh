#!/bin/bash

for ID in xdotool search --name nload
do
        bspc node $ID -d 1
done