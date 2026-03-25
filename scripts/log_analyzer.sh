#!/bin/bash
# log_analyzer.sh - Analyzes logs for specific keywords

echo "======================================"
echo "          Log File Analyzer"
echo "======================================"

echo -n "Enter the path to the log file (e.g., /var/log/syslog): "
read logfile

if [ ! -f "$logfile" ]; then
    echo "Error: The file '$logfile' does not exist."
    echo "Retry with a valid path."
    exit 1
fi

if [ ! -s "$logfile" ]; then
    echo "Warning: The file '$logfile' is empty."
    echo "Retry with a file that contains data."
    exit 1
fi

echo -n "Enter the keyword to search for: "
read keyword

echo "Searching for '$keyword' in $logfile..."
match_count=$(grep -c -i "$keyword" "$logfile" 2>/dev/null)

if [ "$match_count" -eq 0 ]; then
    echo "No matches found for '$keyword'."
else
    echo "Found $match_count matches."
    echo "Here are the last 5 occurrences:"
    echo "--------------------------------------"
    grep -i "$keyword" "$logfile" 2>/dev/null | tail -n 5
fi

echo "======================================"
