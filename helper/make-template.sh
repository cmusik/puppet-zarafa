#!/bin/bash

echo "###############################################################################"
echo "# << FILE MANAGED BY PUPPET >>"
echo "# Manual changes are likey to be overwritten"
echo "###############################################################################"
echo ""

cat | awk '/^[a-z]/ { print $1 " = <%= @" $1 " %>"; next; } { print $0 }'
