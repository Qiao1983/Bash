#!/bin/bash
#Hello Bash
echo "Hello Bash"
#Variable
str="Hello Variable"
OF=$(pwd)-$(date +%Y%m%d).txt
echo $str > $OF
#local variable
HELLO=hello
function hello {
	local HELLO=World
	echo $HELLO
}
echo $HELLO
hello
echo $HELLO
#conditionals
#if expression then statement
#if expression1 then statement1 else if expression2 then statement2 else statement3
if [ "foo" = "foo" ]; then
	echo expression evaluated as true
else
	echo expression evaluated as false
fi
T1="foo"
T2="bar"
if [ "$T1" = "$T2" ]; then
	echo expression evaluated as true
else 
	echo expression evaluated as false
fi
# Loops for, while and until
for i in $( ls); do
	echo item: $i
done

for i in 'seq 1 10';
do 
	echo $i
done

COUNTER=0
while [ $COUNTER -lt 2 ]; do
	echo The counter is $COUNTER
	let COUNTER=COUNTER+1 #= + sign should not put space between operators
done

COUNTER=6
until [ $COUNTER -lt 5 ]; do
	echo COUNTER $COUNTER
	let COUNTER-=1
done

#Functions
function quit {
	exit
}
function hello {
	echo Hello!
}
hello
echo foo

function quit {
	exit
}

# function with parameters
function e {
	echo $1
}
e Hello
e World
#quit
#echo foo

#using select to make simple menus
#OPTIONS="Hello Quit"
#select opt in $OPTIONS; do
#	if [ "$opt"="Quit" ]; then
#		echo done
#		exit
#	elif [ "$opt"="Hello" ]; then
#		echo Hello World
#	else
#		clear
#		echo bad option
#	fi
#done

#Using the command line
if [ -z "$1" ]; then
	echo usage: $0 directory
	#exit
fi

#Reading user input with read
echo please enter your name
read NAME
echo "Hi $NAME!"

#Arithmetic evaluation
echo 1+1
echo $((1+1))
echo $[1+1]

cd /data &> /dev/null
echo rv: $?
cd $(pwd) &> /dev/null
echo rv: $?

# Capturing a commands output
DBS='mysql -uroot -e"show databases"'
for b in $DBS ;
do 
	mysql -uroot -e"show tables from $b"
done

#String comparison operatiors
s1="A"
s2="B"
echo $(s1=s2)
echo $(s1!=s2)

#Arithmetic relational operators

#-lt (<)

#-gt (>)

#-le (<=)

#-ge (>=)

#-eq (==)

#-ne (!=) 
