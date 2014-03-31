# 01. Debugger Basics

This lesson introduces some of the Perl debugger basics.

## Starting the debugger

Usually you will start the debugger with a script/application you want to
explore in greater detail.

The easiest way to do this is to use the `-d` switch with `perl`:

    perl -d simplest.pl

If you run that you will see something like:

    $ perl -d simplest.pl
    
    Loading DB routines from perl5db.pl version 1.39
    Editor support available.
    
    Enter h or 'h h' for help, or 'man perldebug' for more help.
    
    main::(simplest.pl:2):  my $nothing = 0;
      DB<1> 

At the prompt simply type `q` and press `ENTER` to quit the debugger.

## Stepping through a script

Use the debugger with `step.pl`:

    perl -d step.pl

Each time you see the debugger prompt, type `n` and press `ENTER`.

When you see:

    Debugged program terminated.  Use q to quit or R to restart,

press `q` then `ENTER` to quit the debugger.

### Example output

    $ perl -d step.pl
    
    Loading DB routines from perl5db.pl version 1.39
    Editor support available.
    
    Enter h or 'h h' for help, or 'man perldebug' for more help.
    
    main::(step.pl:2):  my $nothing = 0;
      DB<1> n
    main::(step.pl:3):  my $something = 1;
      DB<1> n
    main::(step.pl:4):  $nothing++;
      DB<1> n
    main::(step.pl:5):  if ($nothing == $something) {
      DB<1> n
    main::(step.pl:6):      print "How can nothing be something?\n";
      DB<1> n
    How can nothing be something?
    Debugged program terminated.  Use q to quit or R to restart,

## Stepping through a script with fewer key-presses

Use the debugger with `step.pl`:

    perl -d step.pl

The *FIRST* time you see the prompt, type `n` and press `ENTER`.
All other times *only* press `ENTER`.

When you see:

    Debugged program terminated.  Use q to quit or R to restart,

press `q` then `ENTER` to quit the debugger.

## Restarting your script

Use the debugger with `step.pl`:

    perl -d step.pl

Step one or two lines through the script using `n`.

Restart the script by typing `R` and pressing `ENTER`.

Step through and restart a few times more.

Once you are happy stepping through and restarting the script
press `q` then `ENTER` to quit the debugger.

# Lesson Summary

* `perl -d` - start debugging
* `n` - step through the script ('next')
* `q` - quit the debugger ('quit')
* `R` - start the script from the beginning ('restart')

# Information About Later Lessons

Later lessons will not usually include output from the debugger unless it's
being discussed specifically for some reason.

It's assumed that you will press `ENTER` after each suggested command without
being explicitly told to.

When stepping through more than one line in a script you will usually be given
some indication when to stop. Don't expect to be told 'step through 5 lines'
or 'press "n" and "ENTER"'.

You will be told when to quit the debugger. Some lessons will have longer code
samples to be worked through in stages.
The only exception to this is at the end of each lesson where it's assumed
you'll quit the debugger before moving on to the next lesson.

[Next lesson - 02. Your Next Steps](https://github.com/NET-A-PORTER/perl-debugger-tutorial/blob/master/02.next_steps/README.md)
