#!/bin/bash
rm -f artifact
cd conf
while IFS= read -r line; do
	cat $line >> ../artifact
done < ../buildOrder.txt
