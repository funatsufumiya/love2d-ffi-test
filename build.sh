#!/bin/bash

if [ -n "$MSYSTEM" ]; then
    gcc -o hello.dll -shared hello.c
elif [ "$COMSPEC" != "" ]; then
    gcc -o hello.dll -shared hello.c
elif [ "$(uname)" == 'Darwin' ]; then
    gcc -o libhello.dylib -shared hello.c
else
    gcc -o libhello.so -shared hello.c
fi