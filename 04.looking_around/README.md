# 04. Looking Around

This lesson shows you how to view your current location, the code around your
current location and code in other locations from the debugger.

## Looking around

Run the script in the debugger

    perl -d view.pl

At the prompt try the `.` and `v` commands.

Notice that however many times you use `.` the output is the same; your
current line doesn't change if you're only viewing source.

If you use `v` multiple times the area of code being viewed moves through the
current file, showing the last line of the previous `v` output.

Using `.` resets the area shown by the next `v` command.

## Looking at specific places

You can give `v` a line number as an argument.
Use `v 1` to look at the top of the current file.

You can also look at a single line.
Use `l 1` to see what the first line in the file is.
You can look at blank lines too; try `l 4`.

## It's OK you can't fall off!

Try viewing the first line of the file only (`l 1`) then use `v` multiple
times until you reach the end of the file.

Try `v` a couple of times more at the end of the file and confirm that no matter
how hard you try you can't view yourself into oblivion.

Then view your current location again by using `.` followed by `v`.

## What's that sub?

You can list sub routines with `l [sub]`. Examine the `second_letter()`
function with `l second_letter`.

If the subroutine is long you _will not_ see all of it in one go.

Quit the debugger. Run:

    perl -d long.pl

View the long subroutine:

    l long_sub

Use `v` to see the whole subroutine a chunk at a time.

If you can only view your file in the debugger this makes it possible to
explore, but not very friendly. It's almost always useful to have the actual
source file(s) open in a separate editor or terminal window.

## Looking elsewhere

While we're still looking at `long.pl` it's a great opportunity to learn how
to look at other source files. It's pretty easy really, but `f` does have an
annoying limitation.

Try to view `long.pl`:

    f view.pl

You'll get an error. No matter what you try to do. You can only view a file
that's already been loaded.

Instead we can load a module, and view that file:

    use Thing
    f Thing.pm
    v

Because we loaded our initial script we can examine the file:

    f long.pl
    v

## Examining remote subs

We remember seeing `one()` in the `Thing` package.

Try viewing the function:

    l one

Oops. You need to give the debugger the fully qualified name for methods that
aren't in your current file:

    l Thing::one

Notice that examining a subroutine in another file switches you to that file.

# Lesson Summary

* `l [line|sub]` - list source code
* `v [line]` - view around line
* `.` - list current line
* `f [file]` - view source in a file

[Next lesson - 05. Working with breakpoints](https://github.com/NET-A-PORTER/perl-debugger-tutorial/blob/master/05.breakpoints/README.md)