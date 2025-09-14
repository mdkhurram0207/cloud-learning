Linux Day 14 – Theory Notes

🔹 1. Crontab in Linux

Cron → a background service that runs scheduled tasks automatically.
Crontab → a table (file) that stores user-defined scheduled tasks.
Used for repetitive jobs like backups, monitoring, log cleanup, etc.
Time format has 5 fields (Minute, Hour, Day, Month, Weekday).

🔹 2. break and continue

break → stops the loop completely when a condition is met.
continue → skips the current loop step and moves to the next iteration.
Helps in controlling flow inside loops.

🔹 3. Disadvantages of Shell Scripting

Slower compared to compiled languages.
Difficult to maintain for very large projects.
Less secure (if not written properly).
Shell differences (bash, zsh, sh) can cause portability issues.
Limited error handling.

🔹 4. Bash Dynamic or Static?

Bash is dynamically typed.
Variables don’t need type declarations.
A variable can hold a number at one point and a string later.
Advantage → flexibility.
Disadvantage → runtime errors are possible.
