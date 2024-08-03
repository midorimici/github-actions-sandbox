#!/bin/bash

A_CHANGED_FILES="$1"
B_C_CHANGED_FILES="$2"
B_D_CHANGED_FILES="$3"
A_CHANGED="$4"

if [ "$A_CHANGED" == "true" ]; then
  echo "A changed"
else
  echo "A not changed"
fi

if [ -n "$A_CHANGED_FILES" ]; then
  echo "$A_CHANGED_FILES" | xargs -n 1 dirname | uniq | xargs -i echo './{}' | tr '\n' ' '
  echo
fi

if [ -n "$B_C_CHANGED_FILES" ]; then
  echo "$B_C_CHANGED_FILES" | xargs -n 1 dirname | uniq | xargs -i echo './{}' | tr '\n' ' '
  echo
fi

if [ -n "$B_D_CHANGED_FILES" ]; then
  echo "$B_D_CHANGED_FILES" | xargs -n 1 dirname | uniq | xargs -i echo './{}' | tr '\n' ' '
  echo
fi
