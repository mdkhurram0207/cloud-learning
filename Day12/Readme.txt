Day 12 – Shell Scripting Basics
Today, I learned about different shells and their use in scripting (bash, sh, dash, ksh).

 What I Learned

Shebang (#!): Tells the system which shell to use.
Example:
#!/bin/bash
echo "Hello from Bash!"

bash (Bourne Again Shell)

Feature-rich, supports arrays, loops, string manipulation.

Most Linux distros use it by default.

sh (Bourne Shell / POSIX shell)

Very basic, portable.

Often a symlink → points to dash or bash.
dash (Debian Almquist Shell)
Lightweight, very fast, POSIX-compliant.
Used in Debian/Ubuntu for system scripts.

ksh (Korn Shell)

Strong in enterprise UNIX (AIX, Solaris, HP-UX).

Supports floating-point math and regex.

🔑 Key Differences
Shell	Features	Speed	Portability	Use Case
bash	Arrays, functions, string ops	⚡ Medium	👍 Linux	Automation scripts
sh	Basic POSIX only	⚡ Fast	🌍 Highest	Portable scripts
dash	Minimal POSIX	⚡⚡ Very Fast	👍 POSIX	System/boot scripts
ksh	Math, regex	⚡ Medium	🏢 Enterprise UNIX	Legacy enterprise scripts
📝 Practice Examples
Bash with Arrays
#!/bin/bash
arr=(apple banana cherry)
echo "Second fruit: ${arr[1]}"

POSIX sh (No Arrays)
#!/bin/sh
for i in 1 2 3
do
  echo "Number: $i"
done

💡 Key Takeaway

Use bash for scripting with modern features.
Use sh for portability across systems.
Use dash for fast system-level scripts.
Use ksh in enterprise UNIX environments.

Day 12 complete – learned about shells and scripting basics!

