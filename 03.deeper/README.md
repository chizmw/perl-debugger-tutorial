# 03. Digging Deeper

This lesson shows you how to step into functions.

## Racing through the script

Run the script in the debugger

    perl -d deeper.pl

Step through the script (with `n`) until you see the 'quit debugger message'.

This is the quickest way to progress through a script. It's also, often, the
least useful and least informative.

## Stopping to smell the flowers

Restart the script in the debugger with `R`. Step over the assignment to
`$input_value` and stop when you see that the debugger is about to make the
call to the `level1()` function:

    main::(deeper.pl:19):   my $input_value = $ARGV[0] // 6;
      DB<1> n
    main::(deeper.pl:20):   my $output_value = level1($input_value);
      DB<1> 

This time instead of running this statement and continuing at this level, we'll
'step into' the function on the current line.

Enter the command `s`.

Notice how the prompt has changed to indicate that we're no longer in the
top-level of a script (`main::`):

      DB<1> s
    main::level1(deeper.pl:13):     my $v = shift;

Keep using `s` until you enter the `level3()` function:

      DB<1> s
    main::level3(deeper.pl:4):      return $_[0] + 1;

From here you can use `s` or `n` to continue following the program flow until
you return back out of the call to `level1()`:

      DB<1> n
    main::(deeper.pl:22):   print "we got an output of $output_value, using $input_value\n";

## Returning to surface level

If you step into a function that is of no interest to you, you can quickly get
back to the calling line using `r`.

Restart the script debugging (with `R`) and step down into the functions until
you enter the `level3()` function again.

Enter the command `r`. Notice that returning from a function outputs the
return value from the function you are in.

Use the `r` command until you return back from the call to `level1()`.

## Explore the script

Use `n`, `s`, and `r` to explore the script. Vary your use of the three
commands and get a feel for how they are used and how they behave.

Don't forget to use `x` along the way to examine the values in the variables.

## Bored now!

If you get bored of stepping through a script you can use `c` to continue the
script. Try it when you are in one of the deeper functions.

In our simple example `c` will cause the script to run to completion. In more
advanced scenarios it might only continue script execution until the next
breakpoint.

# Lesson Summary

* `s` - step into a function
* `r` - return from a function

# Well done!

With the commands you've learned so far you will be surprised how much
debugging is possible. `n`, `s`, `r`, `x`, `p`, `c`, `R` and `q` will enable
you to step through most scripts and modules.

[Next lesson - 04. Looking Around](https://github.com/NET-A-PORTER/perl-debugger-tutorial/blob/master/04.looking_around/README.md)