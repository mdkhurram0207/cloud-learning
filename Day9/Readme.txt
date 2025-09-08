

# Day 9 – `sed` (Stream Editor)

## 🔹 What is `sed`?

* **`sed`** stands for **Stream Editor**.
* It reads input **line by line** and allows you to **search, replace, delete, insert, and transform text** automatically.
* Think of `sed` as a **robot editor** – it edits files without opening them manually.


 🔹 Syntax


sed [options] 'command' file




  * `-i` → edit file **in place**
  * `-n` → suppress automatic printing
* **command** → what action you want (replace, delete, insert, print)
* **file** → input file

---

 🔹 Common `sed` Commands

### 1. **Search & Replace (Substitute)**

```bash
sed 's/old/new/' file.txt
```

* Replace first `old` → `new` in each line.

```bash
sed 's/old/new/g' file.txt
```

* Replace **all occurrences** in each line.

```bash
sed -i 's/INFO/LOG/g' app.log
```

* Edit file directly (**in place**).

---

### 2. **Delete Lines**

```bash
sed '2d' file.txt        # delete line 2
sed '2,5d' file.txt      # delete lines 2 to 5
sed '/ERROR/d' app.log   # delete lines containing "ERROR"
```

---

### 3. **Print Lines**

```bash
sed -n '1,5p' file.txt    # print lines 1 to 5
sed -n '/INFO/p' app.log  # print lines containing INFO
```

---

### 4. **Insert & Append**

```bash
sed '2i\This is inserted line' file.txt   # insert before line 2
sed '2a\This is appended line' file.txt   # append after line 2
```

---

### 5. **Replace in Specific Lines**

```bash
sed '3s/INFO/DEBUG/' app.log      # replace only in line 3
sed '1,10s/INFO/DEBUG/g' app.log  # replace in lines 1 to 10
```

---

### 6. **Advanced Examples**

```bash
sed -i '/DEBUG/d' app.log          # remove DEBUG logs
sed -n '/ERROR/p' app.log          # print only ERROR logs
sed -i 's/[0-9]\{16\}/****MASKED****/g' payments.log   # mask credit card numbers
```

---

 🔹 When to Use `sed`

* Automating **config file changes**
* **Cleaning logs** (remove unwanted lines)
* **Extracting important info** (like only `ERROR` lines)
* **Masking sensitive data** in files

---

# 🔹 Difference Between `sed` and `awk`

| Feature         | `sed` (Stream Editor)                          | `awk` (Pattern Scanning & Processing)        |
| --------------- | ---------------------------------------------- | -------------------------------------------- |
| **Purpose**     | Text editing (search, replace, delete, insert) | Data extraction and reporting                |
| **Best for**    | Simple text transformations                    | Structured data (like columns in logs/CSV)   |
| **Works on**    | Entire line as a text string                   | Splits line into **fields** (\$1, \$2, etc.) |
| **Output**      | Usually modifies or deletes lines              | Can perform calculations & formatted reports |
| **Example Use** | Replace "INFO" with "LOG" in logs              | Print only the 2nd column of a log file      |
| **Complexity**  | Lightweight and simple                         | More powerful, but slightly complex          |

✅ **In short:**

* Use **`sed`** for **editing text**.
* Use **`awk`** for **analyzing and processing structured data**.

---



* `sed` is a **stream editor** for automating text editing.
* Powerful for **search/replace, delete, insert, print** operations.
* Very useful in **DevOps automation** (logs, configs, scripts).
* `sed` = editing tool, `awk` = data processing tool.
