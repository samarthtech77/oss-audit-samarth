# Open Source Audit

**Student Name:** Samarth Prakash  
**Student ID:** 24BAI10857  
**Chosen Software:** Git (Version Control System)

## Project Description
This repository contains an executable suite of Bash scripts demonstrating fundamental systems engineering skills on a Linux terminal. Designed for the "Open Source Audit" capstone, the project focuses on inspecting standard system properties, verifying open source software packages (specifically Git), securely auditing disk permissions, analyzing large log files, and emphasizing the core philosophies of open source development.

## Setup Instructions

1. **Install Git**  
   If Git is not already installed on your Ubuntu/Debian server, run:
   ```bash
   sudo apt update
   sudo apt install git
   ```

2. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/oss-audit-project.git
   cd oss-audit-project
   ```

3. **Give Execute Permissions**
   Before running the audit scripts, you need to make them executable:
   ```bash
   chmod +x scripts/*.sh
   ```

4. **Run the Scripts**
   Execute each script directly from the project root. For example:
   ```bash
   ./scripts/system_identity.sh
   ```

## Included Scripts

- **`system_identity.sh`**: Prints standard OS footprint data (kernel, uptime, logged-in user) and displays the GNU GPL license message.
- **`package_inspector.sh`**: Verifies if Git is installed, reports its version/license, and includes a selection tool to query other common FOSS tools.
- **`disk_auditor.sh`**: Audits standard Linux directories (and the Git config directory when available) to report on ownership, size, and permissions.
- **`log_analyzer.sh`**: Prompts the user for a log path and keyword, handles potential errors gracefully (like empty files), and prints the last few matches.
- **`manifesto_generator.sh`**: Interactively collects user inputs to auto-generate and save a personalized "Open Source Manifesto" document.

## Tested Environment
Scripts were tested in Git Bash (Windows) and are compatible with Linux systems like Ubuntu.

## Example Commands & Expected Outputs

**Command Example:**
```bash
./scripts/system_identity.sh
```

**Expected Output (Snippet):**
```text
======================================
    System Identity Report
======================================
Date/Time: 2026-03-25 14:00:00
Logged in User: student
Operating System: Ubuntu 22.04 LTS
...
License Notice: This script and related project files are released under the GNU General Public License (GPL) v3.0.
```

*(For more complete sample outputs, please view the contents of the `sample_outputs/` directory.)*
