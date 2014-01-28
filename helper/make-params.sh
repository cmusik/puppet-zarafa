#!/bin/bash

cat | grep -v "^#" | grep -v "^$" | awk '{ print "$" $1   " = \"" $3 "\""}'
