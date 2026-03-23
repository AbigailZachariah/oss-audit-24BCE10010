# Open Source Software Audit: Python
*Student Name:* Abigail Aleen Zachariah 
*Roll Number:* 24BCE10010  

---

## *Project Overview*
This repository contains a comprehensive audit of *Python* as an open-source software package. The project explores its origins, licensing under the PSF (Python Software Foundation), and its footprint within a Linux environment. It includes five custom scripts designed to automate system administration and auditing tasks.

## *Software Description*
*Python* is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python's design philosophy emphasizes code readability. It is managed by the Python Software Foundation and is released under a permissive open-source license.

---

## *Script Descriptions*

### *1. System Identity Report*
Gathers essential system metadata including the current user, kernel version, and system uptime using command substitution.

### *2. FOSS Package Inspector*
Automates the verification of the Python installation. It checks the system path for the binary and retrieves the current version string.

### *3. Disk and Permission Auditor*
Performs a security sweep of the home directory, listing files alongside their specific permission bits and ownership data.

### *4. Log File Analyzer*
Uses filters to extract the most recent error and warning messages from the system logs (/var/log/syslog) to assist in troubleshooting.

### *5. Open Source Manifesto Generator*
An interactive script that collects user input to generate a personalized manifesto.txt file regarding the value of open-source software.

---

## *System Requirements & Dependencies*
To run these scripts, you must be using a *Linux environment* (Ubuntu/Debian preferred).
* *Interpreter:* Bash (Bourne Again SHell)
* *Package Manager:* apt (for the Inspector script)
* *Privileges:* sudo access is required for the Log File Analyzer script to read system logs.
* *Software:* Python 3.x must be installed.

---

## *Step-by-Step Instructions*

### *Step 1: Clone the Repository*
```bash
git clone https://github.com/AbigailZachariah/oss-audit-24BCE10010.git
cd oss-audit-24BCE10010
```

### *Step 2: Grant Execution Permission*

Run this command to allow the scripts to run on your Linux system:

```bash
chmod +x *.sh
```

### *Step 3: Run the System Identity Report*

Execute this script to see your current system metadata:

```bash
./identity.sh
```

### *Step 4: Run the FOSS Package Inspector*

Use this to verify your Python installation:

```bash
./inspector.sh
```

### *Step 5: Run the Disk and Permission Auditor *

This will list the security permissions for your current folder:

```bash
./auditor.sh
```

### *Step 6: Run the Log File Analyzer *

This requires administrative privileges to read the system logs:

```bash
./log_analyzer.sh
```

### *Step 7: Run the Open Source Manifesto Generator*

Follow the prompts to create your manifesto file:

```bash
./manifesto.sh

