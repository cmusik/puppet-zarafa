#!/bin/bash

cat | grep -v "^#" | grep -v "^$" | awk '{ printf "  $_%s = $%s ? {\n\
    \"UNSET\" => $zarafa::ldap::default[$ldap_type][%s],\n\
    default => $%s,\n\
  }\n\n", $1, $1, $1, $1  }'
