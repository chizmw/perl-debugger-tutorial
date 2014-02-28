# 05. Working with breakpoints

This lesson shows you how to stop the debugger in places of your choosing.

## No breakpoints

Run the script in the debugger

    perl -d break.pl

Let the script run through naturally with `c`. You should see the 'Debugged
program terminated' message.

## Stopping to investigate

Let's assume that some educated intuition has made us interested in the
`random_int()` sub.

    b random_int
    R
    c

This time we stopped somewhere different. Using `v` quickly reveals we
stopped execution as soon as we entered the function we said we were
interested in.

The breakpoint persists over restarts:

    R
    c

will stop as we enter the function again.

## There can be more than one

Hopefully it's not surprising to know that you aren't limited to just one
breakpoint. Set two more breakpoints:

    b some_sub
    b 13

What's that second one? We've inspected the source file and decided that we're
interested in line 13, `b 13` adds a breakpoint at line 13.

    R
    c
    c
    c
    c

When the debugger stops execution look at the prompt and use your view
commands to see where you are. Make sure you understand why you stopped at
each location.

## What do we have?

You can use `L` to list breakpoints that you have set.

Curiously the breakpoints are listed as:

    break if (1):

Breakpoints can have conditions attached to them; if not specified they
default to 'always', i.e. `if (1)`.

First clear all the current breakpoints:

    B *

Restart the script and add a conditional breakpoint:

    R
    b 13 $val == 12

If we `c` to progress through the script we _do not_ stop at line 13.

    R
    B *
    b 13 $val == 13
    c

This time we do stop at our breakpoint. This technique can be useful when you
expect to enter a function multiple times but only care about debugging it
when a specific value is used in it.

Finally, let's remove one breakpoint:

    B 13
    L

We could have used `B *` to delete all breakpoints, but this is an easy
way to wind down this lesson.

# Lesson Summary

* `b` - set a breakpoint (current line)
* `b [sub]` - set a breakpoint (specified function)
* `b [line]` - set a breakpoint (specified line)
* `B [line]` - clear a breakpoint for _line_
* `B *` - clear all breakpoints
* `L` - list break/watch/actions
* `$DB::single = 1` - add a breakpoint to your source code
