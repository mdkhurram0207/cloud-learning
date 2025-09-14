Script Explanation

What it does (in simple terms):
Loops numbers from 1 to 100 .
Checks each number:
Divisible by 3 OR 5 .
But NOT divisible by 15 .
Prints the number if condition is true.

#!/bin/bash

for i in {1..100}
do
  if (( (i % 3 == 0 || i % 5 == 0 ) && i % 15 != 0 )) ;
 then
    echo "$i"
 fi
done
