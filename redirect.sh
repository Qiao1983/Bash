#!/bin/bash
#redirect stdout to a file
#redirect stderr to a file
#redirect stdout to a stderr
#redirect stderr to a stdout
#redirect stderr and stdout to a file
#redirect stderr and stdout to stdout
#redirect stderr and stdout to stderr

#redirect to file
ls -l > ls-l.txt
#stderr 2 file
grep da * 2> grep-errors.txt
#stdout 2 stderr
grep da * 1>&2 
#stderr 2 stdout
grep * 2>&1
#stderr and stdout 2 file
 rm -f $(find / -name core) &> /dev/null 