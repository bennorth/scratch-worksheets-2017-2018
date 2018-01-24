#!/bin/bash

# '-j' is 'junk directories', i.e., produce a 'flat' zipfile.
OUT=../../docs/all-worksheets.zip
rm $OUT
zip -j $OUT ../../docs/week-*/Scratch-worksheets-*.pdf README
