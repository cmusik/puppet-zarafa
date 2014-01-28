#!/bin/bash

C=$1

cat | grep -v "^#" | grep -v "^$" | awk '{ print "$" $1   " = $zarafa::'$C'::params::" $1 ","}'
