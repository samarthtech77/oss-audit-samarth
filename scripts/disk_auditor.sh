#!/bin/bash
# disk_auditor.sh - Checks disk permissions of key directories

echo "======================================"
echo "      Disk and Permission Auditor"
echo "======================================"

dirs=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

# Check git config dir too if available
if [ -d "$HOME/.git" ]; then
    dirs+=("$HOME/.git")
fi

printf "%-20s %-15s %-15s %-15s\n" "DIRECTORY" "PERMISSIONS" "OWNER" "SIZE"
echo "-----------------------------------------------------------------"

for d in "${dirs[@]}"; do
    if [ -d "$d" ]; then
        perms=$(stat -c "%A" "$d" 2>/dev/null || echo "N/A")
        owner=$(stat -c "%U" "$d" 2>/dev/null || echo "N/A")
        # To avoid hanging on large directories, we just get the size of the directory inode itself,
        # or a quick du on the directory (not recursive for system dirs).
        size=$(du -sh "$d" 2>/dev/null | cut -f1)
        if [ -z "$size" ]; then
            size="N/A"
        fi
        printf "%-20s %-15s %-15s %-15s\n" "$d" "$perms" "$owner" "$size"
    else
        printf "%-20s %-15s %-15s %-15s\n" "$d" "NOT FOUND" "-" "-"
    fi
done

echo "======================================"
