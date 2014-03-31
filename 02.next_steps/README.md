# 02. Your Next Steps

This lesson shows you how to examine variables in the debugger.

## Examining Variables

Start by running the relevant script in the debugger:

    perl -d variables.pl

Step through the script (with `n`) until you see:

    string is Mary had a little lamb.
    main::(variables.pl:8): print "stop pressing 'n' or 'ENTER' now\n";
      DB<1> 

You can now examine the variables that have been declared in the script. Try
these commands in the debugger:

 * `p $string`
 * `x $string`
 * `p @things`
 * `x @things`
 * `p %hashof`
 * `x %hashof`

You may have noticed that `x %hashof` isn't very easy to parse. Once you
realise it's a hash you can examine the reference for a nicer output:

 * `x \%hashof`

Slightly less useful in this simple example is:

 * `x \@things`

In your day-to-day debugging you will usually use `x` for examining the
value of variables.

### The debugger isn't strict

The perl debugger doesn't run in 'strict mode' so you can examine variables
that have not been defined.

      DB<2> x $my_made_up_thing
    0  undef

# Lesson Summary

* `x` - examine a variable
* `p` - print the value of a variable

[Next lesson - 03. Digging Deeper](https://github.com/NET-A-PORTER/perl-debugger-tutorial/blob/master/03.deeper/README.md)

