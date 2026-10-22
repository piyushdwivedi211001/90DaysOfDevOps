# 🐧 Day 09 – Linux User & Group Management Challenge

## 🎯 Objective

The objective of this challenge was to practice Linux user and group management, assign users to groups, and configure a shared directory with appropriate permissions.

## 👤 1. Users Created

The following users were created:

* `tokyo`
* `berlin`
* `professor`

### Commands Used

```bash
sudo useradd tokyo
sudo passwd tokyo

sudo useradd berlin
sudo useradd professor

sudo passwd berlin
sudo passwd professor
```

### Verification

```bash
grep -E '^(tokyo|berlin|professor):' /etc/passwd
ls -ld /home/tokyo /home/berlin /home/professor
```

**Note:** User passwords were configured using `passwd`. The home directories were checked separately because the users were initially created without the `-m` option.

---

## 👥 2. Groups Created

The following groups were created:

* `developers`
* `admins`

### Commands Used

```bash
sudo groupadd admins
sudo groupadd developers
```

### Verification

```bash
grep -E '^(developers|admins):' /etc/group
```

---

## 🔗 3. Assigning Users to Groups

Users were assigned to groups according to the challenge requirements.

| User        | Group Membership       |
| ----------- | ---------------------- |
| `tokyo`     | `developers`           |
| `berlin`    | `developers`, `admins` |
| `professor` | `admins`               |

### Commands Used

```bash
sudo gpasswd -a tokyo developers
sudo gpasswd -a berlin developers
sudo gpasswd -a berlin admins
sudo gpasswd -a professor admins
```

### Verification

```bash
groups tokyo
groups berlin
groups professor
```

**Learning:** The `gpasswd -a` command adds a user to a group without replacing the other members of that group.

---

## 📁 4. Shared Development Directory

A shared directory named `/opt/dev-project` was created for the developers group.

### Requirements

* Directory: `/opt/dev-project`
* Group owner: `developers`
* Permissions: `775`

### Commands Used

```bash
sudo mkdir -p /opt/dev-project
sudo chgrp developers /opt/dev-project
sudo chmod 775 /opt/dev-project
```

### Permission Explanation

The permission value `775` means:

* **Owner (7):** Read, write, and execute
* **Group (7):** Read, write, and execute
* **Others (5):** Read and execute

### Verification

```bash
ls -ld /opt/dev-project
```

### File Creation Test

```bash
sudo -u tokyo touch /opt/dev-project/tokyo.txt
sudo -u berlin touch /opt/dev-project/berlin.txt
ls -l /opt/dev-project
```

These commands test whether `tokyo` and `berlin` can create files in the shared directory.

**Result:** Record whether both file-creation commands succeeded after running the tests.

---

## 🧰 5. Commands Used

| Command      | Purpose                                           |
| ------------ | ------------------------------------------------- |
| `useradd`    | Create a Linux user                               |
| `passwd`     | Set or change a user's password                   |
| `groupadd`   | Create a group                                    |
| `gpasswd -a` | Add a user to a group                             |
| `groups`     | Display a user's group memberships                |
| `grep`       | Search for matching entries in a file             |
| `mkdir`      | Create a directory                                |
| `chgrp`      | Change the group ownership of a file or directory |
| `chmod`      | Change permissions                                |
| `ls -ld`     | Display directory details and permissions         |
| `touch`      | Create an empty file                              |
| `sudo -u`    | Run a command as another user                     |

---

## 📚 6. What I Learned

1. Linux users can be created and managed with commands such as `useradd` and `passwd`.
2. Groups help administrators organize users and manage access to shared resources.
3. The `chmod` command controls permissions, while `chgrp` changes group ownership.

---

## 📸 7. Screenshots

Add screenshots of your actual terminal output here.

Recommended screenshots:

1. User entries from `/etc/passwd`.
2. Group entries from `/etc/group`.
3. Group membership verification using `groups`.
4. Directory permissions using `ls -ld /opt/dev-project`.
5. File creation test and output from `ls -l /opt/dev-project`.

---

## ✅ Conclusion

This challenge provided practical experience with Linux user creation, group management, group membership verification, and shared directory permissions.

The shared development directory was configured for the `developers` group with permissions `775`. File creation tests were included to verify access for authorized users.

**Challenge:** Day 09 – Linux User & Group Management
**Repository:** 90DaysOfDevOps
**Status:** Tasks 1–4 only; Task 5 was intentionally skipped.
