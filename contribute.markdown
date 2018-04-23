# Contribution Guide

The Free Software Patterns catalog is itself a "free software" project. Its
[license](link://copyright) allows free reuse of the text, as long as you
make modified versions available under the same license.

The best way to contribute to this project is by submitting your changes back
to us.  This guide will help you to contribute to the text of the patterns.

## Obtaining the source code

You will need to have [Git](http://git-scm.com/) installed on your computer.

    $ git clone git://gitorious.org/flosspapers/free-software-patterns.git

This will create a folder called `free-software-patterns` on your computer.
Make sure you learn [basic Git usage](http://git-scm.com/documentation), it
will be useful.

## Editing the text

The text is organized in folders, with one folder per pattern cluster, plus
some extra folders with support files such as scripts, templates etc. For
example, as we are writing this guide, the source looks like this:

![Source code organization](@@root@@/images/source-organization.png)

The text is written in a format called
[Markdown](http://en.wikipedia.org/wiki/Markdown). The formatting should be
obvious from the existing content, but you can also loop up the syntax on
[Wikipedia](http://en.wikipedia.org/wiki/Markdown). You can use any text editor
to work on the text, choose one you like.

## Optional: Generating HTML

To generate the HTML from the source, you need [GNU
make](http://www.gnu.org/software/make), [Ruby](http://www.ruby-lang.org/) and
[Pandoc](http://johnmacfarlane.net/pandoc/). Installing these should be easy on
any reasonable operating system.

Once you have these dependencies installed, just run `make` inside the root of
the sources and the HTML will be generated in a new folder called `public/`. To
browse the generated text you can open `public/index.html` with a web browser.

## Submitting your contributions

All the commands must be run inside the root folder of the sources.

1. Create one Git branch called, say, `my-contribution`. You can do this by
   running the command `git checkout -b my-contribution`.
2. Edit the files corresponding to the patterns you want to contribute to.
3. Commit your changes by running the command `git commit -a -m "XXX"`. Replace
   `XXX` with a description of your contribution (e.g. "adding examples to the
   'Writing Documentation' pattern").
5. [Review your changes](link://contribution/ReviewYourChanges).
5. Generate patch files with the command `git format-patch master..`. Send the
   generated patch files (`*.patch`) to
   `free-software-patterns@listas.softwarelivre.org`. Note that this address is
   a mailing list, so if you are not subscribed your message will be held for
   moderation. You can subscribe to the list at [its web
   page](http://listas.softwarelivre.org/cgi-bin/mailman/listinfo/free-software-patterns).
