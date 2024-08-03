#!/bin/bash

A_CHANGED_FILES="$1"
B_C_CHANGED_FILES="$2"
B_D_CHANGED_FILES="$3"

echo "$A_CHANGED_FILES" | xargs -n 1 dirname | uniq | xargs -i echo './{}' | tr '\n' ' '
echo "$B_C_CHANGED_FILES" | xargs -n 1 dirname | uniq | xargs -i echo './{}' | tr '\n' ' '
echo "$B_D_CHANGED_FILES" | xargs -n 1 dirname | uniq | xargs -i echo './{}' | tr '\n' ' '
