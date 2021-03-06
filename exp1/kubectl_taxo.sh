#!/usr/bin/env bash
# Parse kubectl CLI help and pretty print command taxonomy
# @author Alister Lewis-Bowen <bowena@vmware.com>

../cli_taxo.py kubectl \
    --commands-token 'Commands\s\(\S+\):|Commands:' \
    --commands-filter '^\s\s((?!#)\S+)\s+[A-Z]' \
    --options-token '^Options:' \
    --options-filter '^\s+?(-.+?):' \
    "$@"
