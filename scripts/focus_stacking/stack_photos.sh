#!/bin/bash

files=$(find . -name "*.jpg"| rev | cut -c 7- | rev|sort|uniq)
mkdir ordered

for file in $files; do
	mkdir -p ./ordered/$file
	mv $file-*.jpg ./ordered/$file
done
