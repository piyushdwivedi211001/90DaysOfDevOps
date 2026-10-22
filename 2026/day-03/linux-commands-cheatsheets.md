# 🐧 Day 03: Linux Command Toolkit

Linux commands are essential for managing processes, handling files, and troubleshooting network issues. This cheat sheet covers commonly used commands in DevOps.

## ⚙️ 1. Process Management

1. `ps aux` — Displays all running processes.
2. `top` — Monitors processes and system resource usage in real time.
3. `htop` — Provides an interactive view of processes (if installed).
4. `kill PID` — Sends a signal to a process using its Process ID.
5. `pgrep nginx` — Finds process IDs matching a process name.
6. `jobs` — Lists jobs running in the current shell.
7. `free -h` — Displays memory usage in a human-readable format.

## 📂 2. File System Management

8. `pwd` — Displays the current working directory.
9. `ls -lah` — Lists files, including hidden files, with details.
10. `cd /path` — Changes the current directory.
11. `mkdir mydir` — Creates a new directory.
12. `touch file.txt` — Creates an empty file if it does not exist.
13. `cp source.txt backup.txt` — Copies a file.
14. `mv old.txt new.txt` — Moves or renames a file.
15. `rm file.txt` — Deletes a file.
16. `find /path -name "file.txt"` — Searches for a file by name.
17. `cat file.txt` — Displays file contents.
18. `grep "ERROR" app.log` — Searches for a pattern in a file.
19. `chmod 755 script.sh` — Changes file permissions.
20. `df -h` — Displays filesystem disk space usage.
21. `du -sh mydir` — Displays the total size of a directory.

## 🌐 3. Networking Troubleshooting

22. `ping -c 4 google.com` — Checks network connectivity by sending four ping requests.
23. `ip addr` — Displays network interfaces and IP addresses.
24. `dig google.com` — Queries DNS records for a domain.
25. `curl -I https://example.com` — Displays HTTP response headers.
26. `ss -tuln` — Lists listening TCP and UDP ports.

## 🔍 4. Detailed Explanation: `grep`

### 📌 What Is `grep`?

`grep` is a Linux command used to search for specific text or patterns in files and command output.

### 📝 Syntax

```bash
grep [options] "pattern" filename
```

### 💻 Examples

**Example 1: Search for errors in a log file**

```bash
grep "ERROR" app.log
```

Displays lines containing `ERROR` in `app.log`.

**Example 2: Search without case sensitivity**

```bash
grep -i "error" app.log
```

Matches `error`, `ERROR`, and other capitalization variations.

**Example 3: Display matching line numbers**

```bash
grep -n "ERROR" app.log
```

Displays matching lines with their line numbers.

**Example 4: Search recursively inside a directory**

```bash
grep -r "ERROR" /var/log/myapp/
```

Searches files recursively inside the specified directory, subject to file permissions.

### 🚀 Why Is `grep` Useful in DevOps?

* 🔎 Helps identify errors in application logs.
* 🛠️ Supports application troubleshooting.
* 📋 Makes searching large log files easier.
* 🔗 Can be combined with other Linux commands using pipes.

**Example:**

```bash
ps aux | grep nginx
```

Searches the process listing for lines containing `nginx`. The output may also include the `grep` command itself.

## 🎯 Conclusion

These 26 Linux commands cover process management, filesystem operations, and networking troubleshooting. Understanding and practising them helps build a strong foundation for Linux administration and DevOps.

🐧 **Keep practising. Small steps every day lead to strong DevOps skills!** 🚀
