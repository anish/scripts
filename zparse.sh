#!/bin/bash
set -x

cat $1 | grep -i href | grep "pdf\|ps" | cut -d"\"" -f 2 | grep http | grep -v .gz | uniq 
#| xargs -n1 wget
