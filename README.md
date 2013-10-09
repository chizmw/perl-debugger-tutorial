# Learning The Perl Debugger

Over a series of exercises you will learn how to use the Perl debugger.

You should try to work through the lessons in order. Even if you don't perform
all the exercises you should read the lesson's README.md file.

# Preparation

## File Permissions

Make sure the permissions are correct for the `.perldb` files in this cloned
repository:

    sh ./SETUP.sh

## Debugger Configuration Files

Make sure you don't have your own `.perldb` file(s) anywhere that might
interfere with the lessons and examples.

The lesson directories all have a local `.perldb` file that should override
any configuration in other directories - if things start to behave strangely,
please double check that there are no other files that could be influencing
the debugger's behaviour.

# Taking A Lesson

For each lesson it's assumed you have changed your current working directory
to be that of the lesson, for example:

    # change to the directory for the first lesson
    cd 01.basics/
    # read the lesson plan
    cat README.md
    
    # ... some time passes
    
    # change to the directory for the second lesson
    cd ../02.setup/

# Viewing Markdown Files

You should be able to view, read and understand the Markdown files in any
text editor.

If you'd like to have them rendered for you check out these links:

 * http://mashable.com/2013/06/24/markdown-tools/
 * https://chrome.google.com/webstore/detail/markdown-here/elifhakcjgalahccnjkneoccemfahfoa
 * http://minhajuddin.com/2012/03/16/markdown-viewer-script-for-your-markdown-documents

## Markdown Here (Chrome) with Ubuntu

If you opt to use Chrome with the Markdown Here extension you can simply

    google-chrome README.md

to open the README.md file in the current directory.

If you'd like to use the Chrome file browser

    google-chrome $PWD

or

    google-chrome ./

should both work.

## Markdown Here (Chrome) with MacOS

You can open files in Chrome from the command line:

    open -a "Google Chrome" README.md

If you'd like to use the Chrome file browser:

    open -a "Google Chrome" $PWD
