
echo "$x"→ Prints the string.
grep -o 's'→ Finds every sin the string, each on a new line.
wc -l→ Counts the lines = number of s.



#!/bin/bash
set -ex

x="mississipi"
echo "$x" | grep -o 's' | wc -l
