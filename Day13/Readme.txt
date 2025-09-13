Day 13 – Learning Shell Scripting
 Topics I learned today:

For Loop – Repeat tasks automatically.
If-Else – Make decisions in scripts.
wget – Download files from the internet.
set -euo pipefail & set -x – Safer and debuggable scripts.

1. For Loop Example
#!/bin/bash
set -euo pipefail
set -x

for i in 1 2 3 4 5
do
  echo "Number: $i"
done


 Prints numbers from 1 to 5.

🔹 2. If-Else Example
#!/bin/bash
set -euo pipefail
set -x

num=10

if [ $num -gt 5 ]; then
  echo "Number is greater than 5"
else
  echo "Number is 5 or less"
fi

🔹 3. wget Example
#!/bin/bash
set -euo pipefail
set -x

wget https://example.com/file.txt -O myfile.txt
echo "File downloaded as myfile.txt"


Downloads file from the internet and saves as myfile.txt.

🔹 4. Script Safety (set -euo pipefail)

At the start of scripts, I now use:

set -euo pipefail
set -x


-e → Exit if a command fails

-u → Error if using undefined variable

-o pipefail → Fail if any command in a pipeline fails

-x → Show each command (debugging)

This makes scripts safer, reliable, and easier to debug.
