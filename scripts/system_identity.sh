#!/bin/bash
# system_identity.sh - Gathers basic system info
# Written for Open Source Audit capstone

echo "======================================"
echo "    System Identity Report"
echo "======================================"

OS_NAME=$(grep PRETTY_NAME /etc/os-release 2>/dev/null | cut -d '"' -f 2 || echo "Linux")
KERNEL_VER=$(uname -r)
LOGGED_IN=$(whoami)
UPTIME_VAL=$(uptime -p 2>/dev/null || uptime | awk '{print $3,$4}')
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")

echo "Date/Time: $CURRENT_DATE"
echo "Logged in User: $LOGGED_IN"
echo "Home Directory: $HOME"
echo "Operating System: $OS_NAME"
echo "Kernel Version: $KERNEL_VER"
echo "System Uptime: $UPTIME_VAL"

echo ""
echo "License Notice: This script and related project files are released under the GNU General Public License (GPL) v3.0."
echo "======================================"
