Day 10 – Learning grep
🔹 What is grep?

grep is a command-line tool used to search text in files.

It shows only the lines that match a given pattern.

Think of it like CTRL+F (Find) but more powerful in Linux.

🔹 Basic Syntax
grep "pattern" filename


"pattern" → word/text you want to search.

filename → file in which you want to search.

🔹 Examples
1. Search for a word
grep "ERROR" app.log


 Shows all lines in app.log that contain the word ERROR.

2. Ignore case (uppercase/lowercase doesn’t matter)
grep -i "error" app.log

3. Show line numbers
grep -n "ERROR" app.log

4. Count matches
grep -c "ERROR" app.log


 Tells how many times ERROR appears in the file.

5. Show lines that do not match
grep -v "INFO" app.log


 Displays all lines except those containing INFO.

6. Search in multiple files
grep "ERROR" *.log


 Searches the word ERROR in all .log files.

🔹 Why grep is important in DevOps?

Quickly find errors in log files.

Search config values in large files.

Combine with other commands (tail, cat, ps, etc.) for monitoring and debugging