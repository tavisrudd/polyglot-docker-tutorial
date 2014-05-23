#!/bin/bash
keys='-e^Tt'
sname=class
screen -rx $keys -S "$sname" || screen $keys -S "$sname"


