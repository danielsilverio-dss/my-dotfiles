#!/bin/sh

STYLE=$1

cd ~/.i3 \
&& i3-style $STYLE -o config --reload
