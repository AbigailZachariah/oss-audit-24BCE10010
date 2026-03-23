#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Abigail Aleen
# Purpose: Checks if a package is installed, finds version, and describes it.

# --- Variables ---
# We are checking for 'python3' as it is pre-installed in Cloud Shell
PACKAGE="python3"

echo "=========================================="
echo "       FOSS PACKAGE INSPECTOR"
echo "=========================================="

# --- Check if package is installed (if-then-else) ---
# dpkg -s checks the status of the package
if dpkg -s $PACKAGE >/dev/null 2>&1; then
    echo "[STATUS] : $PACKAGE is installed."
    
    # --- Find version (Pipe with grep) ---
    # We pipe the output to grep to find only the Version line
    VERSION=$(dpkg -s $PACKAGE | grep 'Version')
    echo "[VERSION]: $VERSION"
else
    echo "[STATUS] : $PACKAGE is NOT installed."
fi

echo "------------------------------------------"

# --- Description (Case Statement) ---
# Prints a one-line philosophy based on the package name
case $PACKAGE in
    "python3")
        echo "Philosophy: Python is a powerful language that emphasizes code readability."
        ;;
    "mysql")
        echo "Philosophy: MySQL is the open-source heart of millions of apps."
        ;;
    "httpd")
        echo "Philosophy: Apache is the web server that built the open internet."
        ;;
    "vlc")
        echo "Philosophy: VLC is the versatile player for any format."
        ;;
    *)
        echo "Philosophy: Open source software empowers users to innovate."
        ;;
esac

echo "=========================================="
