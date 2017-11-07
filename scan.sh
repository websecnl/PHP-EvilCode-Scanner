#!/bin/bash
find /var/www/html -type f -exec grep 'eval(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND EVAL:' {} \;
find /var/www/html -type f -exec grep 'preg_replace(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND PREG_REPLACE:' {} \;
find /var/www/html -type f -exec grep 'assert(' {} \; -exec echo '[PHP CODE EXECUTION] FOUND ASSERT:' {} \;
find /var/www/html -type f -exec grep '``' {} \; -exec echo '[COMMAND EXECUTION] FOUND backticks:' {} \;
find /var/www/html -type f -exec grep 'exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND EXEC:' {} \;
find /var/www/html -type f -exec grep 'popen(' {} \; -exec echo '[COMMAND EXECUTION] FOUND POPEN:' {} \;
find /var/www/html -type f -exec grep 'proc_open(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PROC_OPEN:' {} \;
find /var/www/html -type f -exec grep 'pcntl_exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PCNTL_EXEC:' {} \;
find /var/www/html -type f -exec grep 'system(' {} \; -exec echo '[COMMAND EXECUTION] FOUND SYSTEM:' {} \;
find /var/www/html -type f -exec grep 'shell_exec(' {} \; -exec echo '[COMMAND EXECUTION] FOUND SHELL_EXEC:' {} \;
find /var/www/html -type f -exec grep 'passthru(' {} \; -exec echo '[COMMAND EXECUTION] FOUND PASSTHRU:' {} \;
