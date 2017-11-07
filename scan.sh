#!/bin/bash
# chmod 777 scan.sh
# Run this script inside the domain directory
# Usage: ./scan.sh
# -----------------------------------------------------------------------------
workdir = /var/www/html

find $workdir -type f -exec grep 'eval(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND EVAL:' {} >> security_log.txt \;
echo '[+] eval SCAN COMPLETE';
find $workdir -type f -exec grep 'preg_replace(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND PREG_REPLACE:' {} >> security_log.txt \;
echo '[+] preg_replace SCAN COMPLETE';
find $workdir -type f -exec grep 'assert(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND ASSERT:' {} >> security_log.txt \;
echo '[+]  SCAN COMPLETE';
find $workdir -type f -exec grep '``' {} \; -exec echo '[COMMAND EXECUTION] FOUND backticks:' {} >> security_log.txt \;
echo '[+] backticks SCAN COMPLETE';
find $workdir -type f -exec grep 'exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND EXEC:' {} >> security_log.txt \;
echo '[+] exec SCAN COMPLETE';
find $workdir -type f -exec grep 'popen(' {} \; -exec echo '[COMMAND EXECUTION] FOUND POPEN:' {} >> security_log.txt \;
echo '[+] popen SCAN COMPLETE';
find $workdir -type f -exec grep 'proc_open(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PROC_OPEN:' {} >> security_log.txt \;
echo '[+] proc_open SCAN COMPLETE';
find $workdir -type f -exec grep 'pcntl_exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PCNTL_EXEC:' {} >> security_log.txt \;
echo '[+] pcntl_exec SCAN COMPLETE';
find $workdir -type f -exec grep 'system(' {} \; -exec echo '[COMMAND EXECUTION] FOUND SYSTEM:' {} >> security_log.txt \;
echo '[+] system SCAN COMPLETE';
find $workdir -type f -exec grep 'shell_exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND SHELL_EXEC:' {} >> security_log.txt \;
echo '[+] shell_exec SCAN COMPLETE';
find $workdir -type f -exec grep 'passthru(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PASSTHRU:' {} >> security_log.txt \;
echo '[+] passthru SCAN COMPLETE';
echo '[+] output saved to security_log.txt';
