# Bash Script: File Permission Handling Bug

This repository demonstrates a common, subtle bug in bash scripting related to file permissions. The script `bug.sh` attempts to process all files within the `/tmp` directory.  It intends to print the first line of each file, but lacks proper error handling for files lacking read permissions.

The solution, `bugSolution.sh`, addresses this by including more robust error handling and provides a more reliable approach.