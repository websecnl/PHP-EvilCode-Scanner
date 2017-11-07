#!/bin/bash
# chmod 777 scan.sh
# Run this script inside the domain directory
# Usage: ./scan.sh
# -----------------------------------------------------------------------------
workdir='/var/www/html'
logfile='security.txt'

find $workdir -type f -exec grep -s -R -n 'eval(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND EVAL:' {} -Eron  r"%}(.*){%" >> $logfile \;
echo '[+] eval SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'preg_replace(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND PREG_REPLACE:' {} -Eron  r"%}(.*){%" >> $logfile \;
echo '[+] preg_replace SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'assert(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND ASSERT:' {} -Eron  r"%}(.*){%" >> $logfile \;
echo '[+]  SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n '``' {} \; -exec echo '[COMMAND EXECUTION] FOUND backticks:' {} -Eron  r"%}(.*){%" >> $logfile \;
echo '[+] backticks SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND EXEC:' {} -Eron  r"%}(.*){%" >> $logfile \;
echo '[+] exec SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'popen(' {} \; -exec echo '[COMMAND EXECUTION] FOUND POPEN:' {} -Eron  r"%}(.*){%" >> $logfile \;
echo '[+] popen SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'proc_open(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PROC_OPEN:' {} -Eron  r"%}(.*){%" >> $logfile \;
echo '[+] proc_open SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'pcntl_exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PCNTL_EXEC:' {} -Eron  r"%}(.*){%" >> $logfile \;
echo '[+] pcntl_exec SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'system(' {} \; -exec echo '[COMMAND EXECUTION] FOUND SYSTEM:' {} -Eron  r"%}(.*){%" >> $logfile \;
echo '[+] system SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'shell_exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND SHELL_EXEC:' {} -Eron  r"%}(.*){%" >> $logfile \;
echo '[+] shell_exec SCAN COMPLETE';
find $workdir -type f -exec grep -s -R -n 'passthru(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PASSTHRU:' {} -Eron  r"%}(.*){%" >> $logfile \;
echo '[+] passthru SCAN COMPLETE';
echo '[+] output saved';
