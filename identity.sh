#!/bin/bash
# Script 1: System Identity Report
# Author: Abigail Aleen | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Abigail Aleen"
SOFTWARE_CHOICE="Python"
DISTRO=$(lsb_release -ds)
CURRENT_DATE=$(date)
HOME_DIR=$HOME
LICENSE_MSG="This OS is covered by the GNU General Public License (GPL)."

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

# --- Display ---
echo "=========================================="
echo "   Open Source Audit - $STUDENT_NAME"
echo "=========================================="
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home    : $HOME_DIR"
echo "Uptime  : $UPTIME"
echo "Date    : $CURRENT_DATE"
echo "------------------------------------------"
echo "$LICENSE_MSG"
echo "=========================================="
