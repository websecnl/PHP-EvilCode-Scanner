#!/bin/bash
# chmod 777 scan.sh
# Run this script inside the domain directory
# Usage: ./scan.sh
# -----------------------------------------------------------------------------
workdir='/var/www/html'
logfile='security.txt'

find $workdir -type f -exec grep -s -R -n 'eval(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND EVAL:' {} >> $logfile \;
echo '[+] eval SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'preg_replace(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND PREG_REPLACE:' {} >> $logfile \;
echo '[+] preg_replace SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'assert(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND ASSERT:' {} >> $logfile \;
echo '[+] assert SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n '``' {} \; -exec echo '[COMMAND EXECUTION] FOUND backticks:' {} >> $logfile \;
echo '[+] backticks SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND EXEC:' {} >> $logfile \;
echo '[+] exec SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'popen(' {} \; -exec echo '[COMMAND EXECUTION] FOUND POPEN:' {} >> $logfile \;
echo '[+] popen SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'proc_open(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PROC_OPEN:' {} >> $logfile \;
echo '[+] proc_open SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'pcntl_exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PCNTL_EXEC:' {} >> $logfile \;
echo '[+] pcntl_exec SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'system(' {} \; -exec echo '[COMMAND EXECUTION] FOUND SYSTEM:' {} >> $logfile \;
echo '[+] system SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'shell_exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND SHELL_EXEC:' {} >> $logfile \;
echo '[+] shell_exec SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'passthru(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PASSTHRU:' {} >> $logfile \;
echo '[+] passthru SCAN COMPLETE';
echo '[+] output saved';
