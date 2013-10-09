# LESSON SUMMARY

This is a summary of the commands learned in each of the lessons in this tutorial.

## 01 Lesson Summary - BASICS

* `perl -d` - start debugging
* `n` - step through the script ('next') or (ENTER after first n)
* `q` - quit the debugger ('quit')
* `R` - start the script from the beginning ('restart')

## 02 Lesson Summary - EXAMINING VARIABLES

* `x` - examine a variable
* `p` - print the value of a variable

## 03 Lesson Summary - DIGGING DEEPER

* `s` - step into a function
* `r` - return from a function
* `c` - continue execution

## 04 Lesson Summary - LOOKING AROUND

* `l [line|sub]` - list source code
* `v [line]` - view around line
* `.` - list current line
* `f [file]` - view source in a file

## 05 Lesson Summary - BREAKPOINTS

* `b` - set a breakpoint (current line)
* `b [sub]` - set a breakpoint (specified function)
* `b [line]` - set a breakpoint (specified line)
* `B [line]` - clear a breakpoint for _line_
* `B *` - clear all breakpoints
* `L` - list break/watch/actions
* `$DB::single = 1` - add a breakpoint to your source code
