#!/bin/bash
# Run this script inside the domain directory
# Usage: sudo ./scan.sh
# -----------------------------------------------------------------------------
find /var/www/html -type f -exec grep 'eval(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND EVAL:' {} >> security_log.txt \;
find /var/www/html -type f -exec grep 'preg_replace(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND PREG_REPLACE:' {} >> security_log.txt \;
find /var/www/html -type f -exec grep 'assert(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND ASSERT:' {} >> security_log.txt \;
find /var/www/html -type f -exec grep '``' {} \; -exec echo '[COMMAND EXECUTION] FOUND backticks:' {} >> security_log.txt \;
find /var/www/html -type f -exec grep 'exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND EXEC:' {} >> security_log.txt \;
find /var/www/html -type f -exec grep 'popen(' {} \; -exec echo '[COMMAND EXECUTION] FOUND POPEN:' {} >> security_log.txt \;
find /var/www/html -type f -exec grep 'proc_open(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PROC_OPEN:' {} >> security_log.txt \;
find /var/www/html -type f -exec grep 'pcntl_exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PCNTL_EXEC:' {} >> security_log.txt \;
find /var/www/html -type f -exec grep 'system(' {} \; -exec echo '[COMMAND EXECUTION] FOUND SYSTEM:' {} >> security_log.txt \;
find /var/www/html -type f -exec grep 'shell_exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND SHELL_EXEC:' {} >> security_log.txt \;
find /var/www/html -type f -exec grep 'passthru(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PASSTHRU:' {} >> security_log.txt \;
