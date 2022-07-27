#!/bin/bash

mkdir -p .target
$(vessel bin)/moc $(vessel sources 2> /dev/null) -c src/main.mo --$1 -o .target/$1.wasm
$(vessel bin)/moc $(vessel sources 2> /dev/null) -c src/main.mo --idl -o .target/$1.did
