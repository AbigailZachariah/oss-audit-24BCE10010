#!/bin/bash
# Script 4: Log File Analyzer
# Author: Abigail Aleen
# Usage: ./log_analyzer.sh [filename] [keyword]

# --- Variables & Arguments ---
# $1 is the first thing you type after the script name (the file)
LOGFILE=$1
# $2 is the keyword. If you don't provide one, it defaults to "error"
KEYWORD=${2:-"error"}
COUNT=0

echo "=========================================="
echo "         LOG FILE ANALYZER"
echo "=========================================="

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

# --- While-Read Loop (Processing line by line) ---
while IFS= read -r LINE; do
    # if the line contains the keyword (case-insensitive -i)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Output Summary ---
echo "Keyword  : '$KEYWORD'"
echo "File     : $LOGFILE"
echo "Found    : $COUNT times"
echo "------------------------------------------"

# --- TODO: Print last 5 matching lines ---
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

echo "=========================================="
