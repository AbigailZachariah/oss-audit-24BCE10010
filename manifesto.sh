#!/bin/bash
# Script 5: The Open Source Manifesto Generator
# Author: Abigail Aleen
# Purpose: Interactively generates a personalized philosophy and saves to a file.

# --- Aliases Concept (Demonstrated via comment as requested) ---
# alias l='ls -CF'  <- This is how you would create a shortcut for a command.

echo "=========================================="
echo "      OPEN SOURCE MANIFESTO GENERATOR"
echo "=========================================="
echo "Answer three questions to generate your manifesto."
echo ""

# --- User Input (read) ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Variables ---
DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Composition & File Writing (String Concatenation & >) ---
echo "--- MY OPEN SOURCE MANIFESTO ---" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I believe in the power of $TOOL to change the world." >> $OUTPUT
echo "To me, the core of open source is $FREEDOM." >> $OUTPUT
echo "In this spirit, I commit to building $BUILD to share with the community." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo "------------------------------------------"

# --- Output the file content to console ---
cat $OUTPUT
echo "=========================================="
