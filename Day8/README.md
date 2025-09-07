\# AWK Notes for Linux (Day 8) – Cloud Engineering Focus



Date:  07-09-2025  

Topic: AWK command in Linux  

Purpose: Notes for reference in Cloud Engineering tasks  



---



&nbsp;1. What is AWK?



AWK is a powerful text-processing tool\*\* in Linux used to search, filter, and manipulate text files\*\*.  

It is often used in log analysis, data extraction, and report generation – crucial tasks for Cloud Engineers.



\- AWK processes \*\*text line by line.

\- Fields in a line are separated by a \*\*delimiter\*\* (default: space/tab).

\- Syntax is:



```bash

awk 'pattern { action }' filename



2\. Basic Structure



pattern → condition to match (optional)



action → operation to perform (optional)



filename → input file



Example:



awk '{ print $1 }' file.txt





Prints first column of each line.



3\. AWK Fields



$0 → entire line



$1, $2, … $n → nth column



NF → number of fields



NR → number of record (line number)



FS → field separator (default space)



Example:



awk '{ print $1, $3 }' file.txt





Prints first and third columns.



awk -F, '{ print $2 }' file.csv





Prints second column of a CSV file (comma-separated).



4\. Common AWK Commands



Print entire file:



awk '{ print $0 }' file.txt





Print specific field:



awk '{ print $2 }' file.txt





Print line number + content:



awk '{ print NR, $0 }' file.txt





Filter lines based on pattern:



awk '/error/ { print $0 }' logfile.log





Prints lines containing "error".



Sum of a column:



awk '{ sum += $3 } END { print sum }' file.txt





Calculates sum of 3rd column.



Average of a column:



awk '{ sum += $2; count++ } END { print sum/count }' data.txt



5\. AWK with Cloud Engineering Tasks



As a Cloud Engineer, AWK is useful for:



Analyzing logs (AWS CloudTrail, Nginx, system logs)



awk '/ERROR/ {print $1, $2, $5}' /var/log/nginx/access.log





Monitoring resources

Extract CPU, memory, or disk usage from commands:



top -bn1 | awk '/Cpu/ {print $2, $3, $4}'





Parsing CSV/JSON-like outputs from cloud CLI tools:



aws ec2 describe-instances --query 'Reservations\[\*].Instances\[\*].\[InstanceId,State.Name]' --output text | awk '{print $1, $2}'





Automation scripts for report generation and alerting.



6\. Useful AWK Options



-F → Set custom field separator



-v var=value → Set variable



BEGIN { } → Actions before processing lines



END { } → Actions after processing all lines



Example:



awk -F":" '{ print $1, $3 }' /etc/passwd





Prints username and UID from passwd file.



7\. References / Notes



AWK is essential for text and log manipulation, which is critical for cloud operations.



It reduces manual effort and is lightweight, unlike heavy scripts.



Learning AWK improves efficiency in DevOps, monitoring, and cloud automation.



