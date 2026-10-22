1. Core Components of Linux

Linux consists of three important components:

Kernel

The kernel is the core of the Linux operating system. It manages hardware resources such as the CPU, RAM, storage, and network devices. It also handles process scheduling and memory management.

User Space

User space is where applications and user-level programs run. Examples include the terminal, shell (Bash), text editors, and other applications. Programs use system calls to request services from the kernel.

Init / systemd

The init process is the first userspace process started by the Linux kernel. It typically has PID 1 and is responsible for initializing the system and starting other services. On most modern Linux distributions, systemd performs this role.

2. How Processes Are Created and Managed

A process is a running instance of a program. Each process has a unique Process ID (PID).

Processes are commonly created using system calls such as fork() and clone(). A process can use exec() to replace its current program with another program.

Linux manages processes through scheduling, resource allocation, signals, and process states.

Useful commands for process management:

ps aux — Lists running processes.
top — Displays processes and resource usage in real time.
pstree — Shows the process hierarchy.
kill PID — Sends a signal to a process.
nice — Starts a process with a specified scheduling priority.
jobs — Lists jobs associated with the current shell.


3. What Is systemd and Why Does It Matter?

systemd is a system and service manager used by many modern Linux distributions. It usually runs as PID 1 and manages services, startup tasks, and system resources.

Key Responsibilities
Starts system services during boot.
Manages service dependencies and startup order.
Monitors and restarts services when configured to do so.
Manages system targets, timers, and mount points.
Collects system logs through journald.
Useful systemd Commands

systemctl status ssh
systemctl start ssh
systemctl stop ssh
systemctl restart ssh
systemctl enable ssh
systemctl list-units --type=service
journalctl -u ssh

Note: The service name may differ by Linux distribution. For example, Ubuntu commonly uses ssh, while some distributions use sshd.

Why systemd Matters in DevOps

systemd helps DevOps engineers manage application services, configure automatic startup, investigate service failures, and inspect logs. It is especially useful when deploying and maintaining applications on Linux servers.

  
  ! Linux Process States

A process is a running instance of a program. Linux uses different states to track processes.

Running (R): The process is currently executing or ready to run on the CPU.
Sleeping (S): The process is waiting for an event or resource.
Stopped (T): The process has been paused, usually by a signal.
Zombie (Z): The process has finished execution, but its parent has not yet collected its exit status.
Terminated: The process has finished execution and no longer runs.

Note: Zombie does not mean running or sleeping. A sleeping process is waiting, while a stopped process is paused.

! Five Basic Linux Commands


1. cd — Change Directory
Used to move from one directory to another.
Example: cd Documents

Go to the parent directory: cd ..
2. man — Manual
Displays the manual page of a Linux command.
Helps users understand command syntax and options.
Example: man ls

3. mkdir — Make Directory
Used to create a new directory.
Example: mkdir myproject

Create nested directories: mkdir -p project/day-02

4. su — Switch User
Used to switch to another user account.
Example: su username

Switch to the root account: su - (requires appropriate permissions and authentication).

5. pwd — Print Working Directory
Displays the full path of the current working directory.
Helps users identify their current location in the filesystem.

Example: pwd
