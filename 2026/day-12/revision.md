# Day 12 – Breather & Revision (Days 01–11)

## 🎯 Goal

Today, I revised the Linux and DevOps fundamentals covered during Days 01–11. I reviewed important commands, practised file operations, refreshed my command cheat sheet, and prepared for the next stage of my DevOps journey.

---

## 1. Mindset & Learning Plan 🧠

* Reviewed my initial learning plan from Day 01.
* Focused on building strong Linux fundamentals.
* Continued practising commands instead of only learning theory.
* Identified file permissions, ownership, and service management as areas that need regular practice.
* My goal is to become more confident with Linux and DevOps tools through hands-on learning.

## 2. Processes & Services ⚙️

### Commands Reviewed

```bash
ps aux
systemctl status ssh
```

### Observations

* `ps aux` displays running processes and useful information about them.
* `systemctl status ssh` checks the status of the SSH service.
* Service names may differ depending on the Linux distribution.
* Checking processes and service status helps identify potential system issues.

## 3. File Skills 📁

### Commands Practised

```bash
mkdir -p revision-practice
echo "Day 12 Linux Revision" >> revision-practice/notes.txt
cat revision-practice/notes.txt
chmod 640 revision-practice/notes.txt
ls -l revision-practice/notes.txt
```

### Learnings

* `mkdir -p` creates a directory, including missing parent directories.
* `echo >>` appends text to a file without replacing its existing content.
* `cat` displays file contents.
* `chmod 640` gives the owner read/write permissions and the group read permission.
* `ls -l` displays file permissions, ownership, and other file details.

## 4. Cheat Sheet Refresh 📘

### Five Useful Commands

1. `ls -l` — Check file permissions and ownership.
2. `ps aux` — View running processes.
3. `df -h` — Check disk space usage.
4. `systemctl status <service>` — Check the status of a service.
5. `journalctl -u <service>` — Inspect logs for a specific service.

These commands are useful for basic troubleshooting and checking system health.

## 5. User & Group Sanity Check 👥

### Commands Reviewed

```bash
id
groups
getent group
```

### Learnings

* `id` displays a user's UID, primary group, and supplementary groups.
* `groups` displays the groups associated with a user.
* `getent group` lists available group information.
* `chown` changes file ownership.
* `chgrp` changes the group associated with a file.

**Example:**

```bash
ls -l notes.txt
```

This command helps verify the file's current owner, group, and permissions.

---

## 6. Mini Self-Check ✅

### Q1. Which three commands save me the most time right now, and why?

* `ls -l` — Quickly checks file permissions and ownership.
* `ps aux` — Helps me inspect running processes.
* `systemctl status <service>` — Helps me check whether a service is running or has reported an error.

### Q2. How do I check if a service is healthy?

I would start with these commands:

```bash
systemctl status <service>
journalctl -u <service> -n 50
ps aux
```

* The first command checks the service status.
* The second displays the latest 50 log entries for the service.
* The third helps me inspect running processes.

The exact service name depends on the application and Linux distribution.

### Q3. How do I safely change ownership and permissions without breaking access?

I first inspect the existing permissions and ownership using `ls -l`. Then I make the smallest required change and verify the result.

**Example:**

```bash
ls -l notes.txt
chmod 640 notes.txt
ls -l notes.txt
```

This sets the file permissions to `rw-r-----`. I should avoid changing permissions or ownership unnecessarily, especially on system files.

### Q4. What will I focus on improving in the next three days?

* Practising Linux commands regularly.
* Improving my understanding of file permissions and ownership.
* Learning to troubleshoot services using `systemctl` and `journalctl`.
* Becoming more confident with users, groups, and process management.
* Maintaining clear notes and pushing completed work to GitHub.

---

## 7. Key Takeaways 💡

* Linux commands become easier with regular hands-on practice.
* File permissions control who can read, write, or execute files.
* File ownership and group membership help manage access.
* Process and service checks are important troubleshooting skills.
* Keeping a command cheat sheet saves time during daily tasks.

## 8. Revision Checkpoints ☑️

* [ ] Reviewed my Day 01 learning plan.
* [ ] Revisited process and service management commands.
* [ ] Practised basic file operations.
* [ ] Reviewed five useful Linux commands.
* [ ] Revisited user, group, and ownership commands.
* [ ] Completed the mini self-check.
* [ ] Saved this revision in `day-12-revision.md`.
* [ ] Committed and pushed the completed file to GitHub.

---

## Conclusion

Day 12 helped me consolidate the Linux fundamentals I learned during Days 01–11. I revised commands for processes, services, file operations, permissions, and ownership. Regular revision will help me retain these concepts and apply them confidently while troubleshooting real-world systems.

**#90DaysOfDevOps #DevOpsKaJosh #TrainWithShubham**
