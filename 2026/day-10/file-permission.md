# 🐧 Day 10 Challenge – Linux File Permissions

## 📁 Files Created

The following files and directory were created during this challenge:

* `devops.txt` — Empty file created using `touch`.
* `notes.txt` — Text file created using `echo`.
* `script.sh` — Shell script created using `vim`.
* `project/` — Directory created to practice directory permissions.

## 🔐 Permission Changes

| File/Directory | Before                                                | After                      | Purpose                                                                       |
| -------------- | ----------------------------------------------------- | -------------------------- | ----------------------------------------------------------------------------- |
| `devops.txt`   | `777` (as initially observed, verify before changing) | `555`                      | Removed write permission                                                      |
| `notes.txt`    | `777`                                                 | `640`                      | Owner can read/write; group can read; others have no access                   |
| `script.sh`    | `777` (as initially observed, verify before changing) | Execute permission enabled | Allowed the script to run                                                     |
| `project/`     | Newly created                                         | `755`                      | Owner has full permissions; group and others can read and enter the directory |

**Note:** The permissions listed above should be checked against your actual terminal output. The initial `ls -l` output showed `devops.txt` and `script.sh` with `555` permissions and `notes.txt` with `777` permissions.

## 💻 Commands Used

### 1. Create Files

```bash
touch devops.txt
echo "I am learning Linux file management." > notes.txt
vim script.sh
```

Content added to `script.sh`:

```bash
echo "Hello DevOps"
```

### 2. Read Files

```bash
cat notes.txt
vim -R script.sh
head -n 5 /etc/passwd
tail -n 5 /etc/passwd
```

### 3. Check Permissions

```bash
ls -l devops.txt notes.txt script.sh
```

### 4. Modify Permissions

```bash
chmod +x script.sh
chmod a-w devops.txt
chmod 640 notes.txt
mkdir -p project
chmod 755 project
```

### 5. Test Permissions

```bash
./script.sh
echo "Testing permissions" >> devops.txt
chmod a-x script.sh
./script.sh
chmod +x script.sh
```

### 6. Verify Final Permissions

```bash
ls -l devops.txt notes.txt script.sh
ls -ld project
```

## 📚 What I Learned

1. The `chmod` command changes file and directory permissions in Linux.
2. Numeric permission values such as `640` and `755` control access for the owner, group, and others.
3. Execute permissions allow scripts to run, while write permissions determine whether files can be modified.

## ✅ Conclusion

This challenge helped me practise creating files, reading file contents, understanding Linux permissions, modifying access rights, and testing file execution.

I also learned how to verify permissions using `ls -l` and `ls -ld`.

