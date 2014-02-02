#!/bin/bash

cat | grep -v "^#" | grep -v "^$" | awk '{ if ($1 ~ /propmap/) { next; }; printf "%s => \"%s\",\n", $1, $3 }'
