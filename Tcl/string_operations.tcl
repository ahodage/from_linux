#!/usr/bin/tclsh

set s1 "Hello"
set s2 "World"
set s3 "World"
puts [string compare s1 s2]
if {[string compare s2 s3] == 0} { puts "String \'s1\' and \'s2\' are same."; } 

if {[string compare s1 s2] == -1} {
puts "String \'s1\' comes before \'s2\'.";}

if {[string compare s2 s1] == 1} {
puts "String \'s2\' comes before \'s1\'.";}

set s1 "Hello World"
set s2 "o"
puts "First occurrence of $s2 in s1"
puts [string first $s2 $s1]
puts "Character at index 0 in s1"
puts [string index $s1 0]
puts "Last occurrence of $s2 in s1"
puts [string last $s2 $s1]
puts "Word end index in s1"
puts [string wordend $s1 20]
#Can't understand this part
puts "Word start index in s1"
puts [string wordstart $s1 20]
#Find lenght of the string
puts "Length of string $s1"
puts [string length $s1]
#Conversion of alphabet cases
puts "Uppercase string of s1"
puts [string toupper $s1]
puts "Lowercase string of s1"
puts [string tolower $s1]
#Triming strings
set s1 "Hello World"
set s2 "World"
puts "Trim right $s2 in $s1"
puts [string trimright $s1 $s2]

set s2 "Hello"
puts "Trim left $s2 in $s1"
puts [string trimleft $s1 $s2]

set s1 " Hello World "
set s2 " "
puts "Trim characters s1 on both sides of s2"
puts [string trim $s1 $s2]

#Pattern matching 
puts [scan "90" {%[0-9]} m]
puts [scan "abc" {%[a-z]} m]
puts [scan "abc" {%[A-Z]} m]
puts [scan "ABC" {%[A-Z]} m]
