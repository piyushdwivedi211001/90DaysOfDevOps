#!/bin/bash

set -euo pipefail

# 1. Hostname and OS Information
system_info() {
    echo "Hostname: $(hostname)"

    if [ -f /etc/os-release ]; then
        source /etc/os-release
        echo "Operating System: $PRETTY_NAME"
    fi
}

# 2. System Uptime
show_uptime() {
    echo "System Uptime: $(uptime -p)"
}

# 3. Disk Usage - Top 5
show_disk_usage() {
    echo "Top 5 Largest Files and Directories:"
    du -ahx / 2>/dev/null | sort -rh | awk 'NR <= 5' || true
}

# 4. Memory Usage
show_memory() {
    echo "Memory Usage:"
    free -h
}

# 5. Top 5 CPU-consuming Processes
show_cpu_processes() {
    echo "Top 5 CPU-consuming Processes:"
    ps -eo pid,comm,%cpu,%mem --sort=-%cpu | awk 'NR <= 6'
}

# Main Function
main() {
    echo "=================================="
    echo "       SYSTEM INFO REPORT"
    echo "=================================="

    echo
    echo "----- HOSTNAME AND OS -----"
    system_info

    echo
    echo "----- SYSTEM UPTIME -----"
    show_uptime

    echo
    echo "----- DISK USAGE -----"
    show_disk_usage

    echo
    echo "----- MEMORY USAGE -----"
    show_memory

    echo
    echo "----- CPU PROCESSES -----"
    show_cpu_processes

    echo
    echo "=================================="
    echo "       REPORT COMPLETED"
    echo "=================================="
}

# Execute Main Function
