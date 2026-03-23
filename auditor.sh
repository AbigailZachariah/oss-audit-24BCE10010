#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Abigail Aleen
# Purpose: Loops through system directories to report size, owner, and permissions.

# --- Variables ---
# List of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================================="
echo "                SYSTEM DIRECTORY AUDIT"
echo "=========================================================="
echo -e "DIRECTORY\tPERMISSIONS\tOWNER\tSIZE"
echo "----------------------------------------------------------"

# --- The For Loop (Iteration) ---
for DIR in "${DIRS[@]}"; do
    # Check if the directory actually exists on this system
    if [ -d "$DIR" ]; then
        
        # --- Extracting Fields (ls -ld and awk) ---
        # $1 is permissions, $3 is owner
        STATS=$(ls -ld "$DIR" | awk '{print $1 "\t" $3}')
        
        # --- Extracting Size (du and cut) ---
        # du -sh gives human-readable size; cut -f1 gets the first column
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        # Output the collected data
        echo -e "$DIR\t$STATS\t$SIZE"
    else
        echo -e "$DIR\tDoes not exist on this system"
    fi
done

echo "=========================================================="

# --- TODO: Check specific software config directory ---
# Checking if Python3 (our chosen software) has a config folder
CONF_DIR="/usr/lib/python3"
if [ -d "$CONF_DIR" ]; then
    echo "FOSS Config Audit: $CONF_DIR exists."
    ls -ld "$CONF_DIR" | awk '{print "Permissions: " $1 " | Owner: " $3}'
fi
