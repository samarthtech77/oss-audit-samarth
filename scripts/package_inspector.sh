#!/bin/bash
# package_inspector.sh - Checks FOSS packages

echo "======================================"
echo "      FOSS Package Inspector"
echo "======================================"

# Check for Git
if command -v git >/dev/null 2>&1; then
    echo "Git is installed!"
    GIT_VERSION=$(git --version)
    echo "Version: $GIT_VERSION"
    echo "Summary: Distributed version control system"
    echo "License: GPL-2.0"
else
    echo "Git is not installed on this system."
fi
echo "--------------------------------------"

# Provide a small case statement to check other typical packages
echo "Select a package to inspect:"
echo "1) curl"
echo "2) wget"
echo "3) python3"
echo "4) bash"
echo -n "Enter a number (1-4): "
read choice

case $choice in
    1)
        pkg="curl"
        desc="Command line tool for transferring data"
        ;;
    2)
        pkg="wget"
        desc="Non-interactive network downloader"
        ;;
    3)
        pkg="python3"
        desc="High-level programming language"
        ;;
    4)
        pkg="bash"
        desc="GNU Bourne Again SHell"
        ;;
    *)
        echo "Invalid selection. Exiting."
        exit 1
        ;;
esac

echo "Inspecting $pkg..."
if command -v $pkg >/dev/null 2>&1; then
    echo "Status: Installed"
    echo "Description: $desc"
else
    echo "Status: Not installed"
fi
echo "======================================"
