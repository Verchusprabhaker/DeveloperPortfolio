#!/bin/bash
# Author: Verchus Prabhaker
# Description: Prints a formatted system information report (macOS version)

echo "=============================================="
echo "Name: Verchus Prabhaker | Roll No: 2601730064 | Date: $(date)"
echo "=============================================="

echo "CPU Model: $(sysctl -n machdep.cpu.brand_string)"
echo "CPU Cores: $(sysctl -n hw.ncpu)"

echo "--- Memory ---"
TOTAL=$(sysctl -n hw.memsize | awk '{printf "%.1f GB", $1/1024/1024/1024}')
USED=$(top -l 1 | grep PhysMem | awk '{print $2}')
echo "Total Memory: $TOTAL"
echo "Used Memory: $USED"

echo "--- Top 3 Processes by CPU ---"
ps aux | sort -nrk 3 | head -3 | awk '{print $11 " (CPU: " $3 "%)"}'

echo "=============================================="
echo "Report generated successfully."
