# 🐧 Day 04: Linux Practical Practice

## 🎯 Objective

Practice Linux process management, systemd service inspection, and log troubleshooting using real commands.

## ⚙️ 1. Process Checks

### Command 1: `ps aux`

**Purpose:** Displays running processes and their resource usage.

**Command:**

```bash
ps aux
```

**Observation:**

* Number of processes or visible entries: [
    USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.1  0.4  24492 15732 ?        Ss   10:51   0:03 /sbin/ini
root           2  0.0  0.0   3180  2212 hvc0     Sl+  10:51   0:00 /init
root           8  0.0  0.0   3180  2048 hvc0     Sl+  10:51   0:00 plan9 --c
root         110  0.0  0.4  50420 17052 ?        S<s  10:52   0:01 /usr/lib/
systemd+     145  0.0  0.4  22416 14420 ?        Ss   10:52   0:00 /usr/lib/
root         149  0.0  0.3  35572 12556 ?        Ss   10:52   0:02 /usr/lib/
]
* Example process name: [Record a process you actually saw]

### Command 2: `top`

**Purpose:** Monitors processes and system resource usage in real time.

**Command:**

```bash
top
```

**Observation:**
   PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+
    550 root      20   0 2868028  86512  60788 S   2.3   2.4   0:04.87
    282 jenkins   20   0 6725348 633832  30516 S   1.8  17.6   1:53.73
   1516 dell      20   0    8260   6100   3948 R   0.5   0.2   0:00.30
      1 root      20   0   24492  15732  11672 S   0.0   0.4   0:03.97
      2 root      20   0    3180   2212   2072 S   0.0   0.1   0:00.12

## 🔧 2. Service Checks

### Command 3: `systemctl status cron`

**Purpose:** Checks the status of the cron service.

**Command:**

```bash
systemctl status cron
```

**Observation:**

* Service status: [
     cron.service - Regular background program processing daemon
     Loaded: loaded (/usr/lib/systemd/system/cron.service; enabled; preset:>
     Active: active (running) since Thu 2026-10-22 10:52:06 UTC; 55min ago
 Invocation: e683893f6ab24694b097a8ecb49cd8e0
       Docs: man:cron(8)
   Main PID: 277 (cron)
      Tasks: 1 (limit: 4203)
     Memory: 1.3M (peak: 3.3M)
        CPU: 125ms
     CGroup: /system.slice/cron.service
             └─277 /usr/sbin/cron -f -P
]
*

### Command 4: `systemctl list-units --type=service --state=running`

**Purpose:** Lists currently running systemd services.

**Observation:**

* Services observed: [Oct 19 07:42:19 PIYUSH systemd[1]: Stopping cron.service - Regular background program processing daemon...
Oct 19 07:42:19 PIYUSH systemd[1]: cron.service: Deactivated successfully.
Oct 19 07:42:19 PIYUSH systemd[1]: Stopped cron.service - Regular background program processing daemon.
-- Boot d2a3911b095449a4844b73194aeeb502 --
Oct 21 07:55:21 PIYUSH systemd[1]: Started cron.service - Regular background program processing daemon.
Oct 21 07:55:21 PIYUSH (cron)[267]: cron.service: Referenced but unset environment variable evaluates to an empty string: EXTRA_OPTS]



### Command 6: `journalctl -n 20 --no-pager`

**Purpose:** Displays recent system journal entries.

**Observation:**

* Result: [Record actual output or error]
* Relevant message: [Record a message if available]

## 🛠️ 4. Mini Troubleshooting Flow

1. Check whether the required service exists.
2. Inspect the service status using `systemctl status`.
3. Review recent service logs using `journalctl`.
4. Identify any errors or warnings in the output.
5. Record the findings without making unnecessary system changes.

## 📚 What I Learned

* How to inspect Linux processes using `ps` and `top`.
* How to check service status using `systemctl`.
* How to inspect logs using `journalctl`.
* How process, service, and log information helps troubleshoot Linux systems.

---

**Day:** 04
**Topic:** Linux Process, Service, and Log Troubleshooting
**Status:** Practical observations recorded from my Linux environment.
