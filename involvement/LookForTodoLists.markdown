# Look for Todo Lists

**Intent:** Discover places and things that may be good starting points for
contributing to a FLOSS project. 

## Motivation

You are willing to contribute to some previously selected FLOSS project
but have no idea of what to do or where to start.
You used some of the \textit{First Contact} \cite{demeyer2008} patterns 
and they helped you to get familiar with the software and some related artifacts.
Now it's time to start contributing. However, you are still somewhat
unfamiliar with the way things are done.
For instance, if you choose a bug to fix or a improvement to make, 
it may be difficult
to determine what needs to be changed in the code base.

## Problem

How can you make a contribution if you are not familiar with the way things are done?

## Forces

The first steps as a contributor can be hard for many reasons:

* _You have low experience with the project_. Because of that, you want to
  avoid working on high priority tasks.

* _You may not be able to complete tasks in a timely manner_. 
You have to provide your contributions in a small amount of time. 
If you delay your contribution, one of two problems can arise:
    - you may prevent other developers from doing their work, if their work
      requires that your task is completed; or
    - you may discover that another developer completed the task before you, due
      to its high priority.
      
 Yet, you make feel motivated to keep ahead because:
 
* _You may have instant gratification_. Possibly this will happen
if you find  trivial tasks to start with and manage to complete them in
a reasonable amount of time.

* _Another brick in the wall_. Even responsible for minor or easy tasks, 
you feel you are part of something important.

## Solution

Look for TODO lists in the FLOSS project. Many projects have TODO
lists, i.e., lists of things that should be done eventually. These are usually
low priority tasks, or tasks that no one has taken the time to think about
seriously. TODO lists come in two flavors:

* Explicit TODO lists in a document (for example, a file named `TODO` in the
  project's root folder) that is bundled together with the application source
  code;
* Comments in the source code, marked by words or tags  such as `TODO`, `FIXME`, `XXX`,
  or `???`.
 
Explicit TODO lists are usually plain text, in the form of itemized lists of tasks. 
Sometimes they are organized hierarchically, with items and subitems.

Most source code editors highlight occurrences of at least one of the markers,
and some integrated development environments also create a list of such
occurrences. You can also use the command-line utility `grep` to look for these
markers in an arbitrary number of files.

The meaning for each specific marker is not well-defined. The [following
definitions](http://c2.com/cgi/wiki?FixmeComment) were provided by [Martin
Pool](http://c2.com/cgi/wiki?MartinPool):

>
>_There are useful distinctions between different tags. 'FIXME' is for things which are definitely broken, but where you want to not worry about it for the moment. 'TODO' is for useful features, optimizations or refactorings that might be worth doing in the future. XXX is for things that require more thought and that are arguably broken. Of course, you can make up your own categories, but I like these ones and they seem kind of standard._
>

Martin also provided some examples:

>
>/* TODO: How about auto-correcting small spelling 
>         errors?  */
>
>/* FIXME: This won't work if the file is missing.   */
>
>/* XXX: This method needs refactoring: should
>        switch by core type. */
>

Source code documentation systems usually define special markers for annotating
tasks in the source code. For example, [Doxygen](http://doxygen.sf.net/)
creates a cross-referenced list with all occurrences of `\todo` or `@todo`
inside source code comments. If the project uses a specific source code
documentation system, check the system's documentation for a list of supported
markers.

## Trade-Offs

**Pros:** 

* Source code comments usually refer to nearby code, so it is easier to
  understand what needs to be changed in order to resolve the issue. 

* Source code comments usually refer to low priority, non
  critical tasks, so that you can manage to deliver your contribution on time.
  
* While looking for tasks  in the source code, you may also
be improving  your understanding about the software 
after your \textit{First Contact}.

**Cons:** 

* Source code comments and TODO files, unlike bug reports, are not
   updated until the task is done. Therefore, they might contain outdated
  information (e.g., maybe someone is already working on a TODO).

* If the tasks are uninteresting you may lose interest in contributing.

* TODO lists may contain several tasks and you remain lost on how to start contributing.


## Rationale

Because TODO lists usually contain low priority tasks not assigned to any
particular developer, chances are good that no one is working on the task, so
you do not need to rush.

## Known Uses

Many projects uses either explicit TODO lists, or special source comments, or
both.  [JUnit](http://github.com/KentBeck/junit/) contains a file
named `to-do.txt` with a itemized, hierarchical, list of tasks, but no TODO
markers inside source code comments. On the other hand,
[Node.js](http://github.com/joyent/node) contains several `TODO`, `FIXME`, and
`XXX` comments, but no TODO file. 

[CakePhP](http://cakephp.org/) is an open source web application framework written in PHP.
It uses a tool for tracking issues that provides a list of tasks to be performed. 
This list is generated from source code annotations. 
The TODO's found in the source code are related to "methods that should be constructors,
tests that should have been implemented, methods that could be refactored
or even implemented".

The [Code Style Guidelines for Android Contributors](http://source.android.com/source/code-style.html) recommends the use of TODO comments for "code that is temporary, a short-term solution, 
or good-enough but not perfect". When contributing to [Financisto](http://financisto.com/), 
an open source personal finance manager for Android platform, one of the authors 
used TODO comments to find code that needed enhancements.
 
## Related Patterns

If you are not familiar with the FLOSS project, you should try the
\textit{First Contact} patterns \cite{demeyer2008}.
Once you have identified some tasks from TODO lists, you should consider
[Easy Tasks First](link://involvement/EasyTasksFirst). 
It may be a good idea to [Review Recent Activity](link://contribution/ReviewRecentActivity) to make sure
that your contribution is still relevant or that some other contributor did not  perform it already.

## What Next

After finding a suitable task for contributing with, 
you  should consider taking a look at some of the
\textit{Contribution Patterns}. Be sure that you have the [Right Version for the
Task](link://contribution/RightVersionForTheTask), and [Review Your
Changes](link://contribution/ReviewYourChanges) before committing them.
