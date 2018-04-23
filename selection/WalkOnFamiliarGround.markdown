# Walk on Familiar Ground

**Intent:** Select a FLOSS project to contribute with based on your familiarity as an end-user.

## Motivation

You have been using open source software for a while --
for instance, your preferred text editor, a web browser, etc. -- 
most of them developed by a community of volunteers, and
you feel a will or sense of obligation to give back.
One possible way to give back is to apply 
your own effort and current skills to some existing FLOSS project.
These skills may be related to software development practice 
-- programming, bug fixing, testing, working in teams -- or not -- 
for example, performing translations.
Or it may be the case that you had an innovative idea, for instance, 
some code editing feature not provided by any 
IDE\footnote{Integrated Development Environment}, 
even the open source IDE that you frequently use.

## Problem

How can you select a FLOSS project to contribute with that 
allows you to give back to the community?

## Forces

* _Fear of the dark_. You may not feel comfortable when contributing to a project
  that you know little about.
  
 * _Feed two birds with one scone_. You plan to give back to the community by investing
your time and effort while contributing to some open source project, 
but you may, as well, get additional benefits. 
  
* _Spinach can_. You want to strengthen your developing skills by contributing to a free
  software project.

## Solution

Select a free software that you already use for contributing with, 
for example, your text editor, your web browser, your presentation software, 
your e-mail program, or your instant messaging program. 
If you also develop software, you may choose to  contribute to one of the libraries 
or infrastructure software (compilers, IDE, etc.) you use. 
In any situation, make sure that the project you use is open source 
and accepts contributions from external developers.

Use your knowledge as a software user to 
[Write Documentation](link://contribution/WriteDocumentation) 
or to [Translate To Your Language](link://contribution/TranslateToYourLanguage) 
important parts of the documentation. 
As a software user, you may stay tuned and 
[Write Useful Bug Reports](link://contribution/WriteUsefulBugReports) 
whenever you deal with errors.

However, to contribute by developing code or fixing bugs,
you need to familiarize yourself also with the source code
and with development issues. For instance:

* If you installed the software using a package manager, 
it's likely that you haven't even visited the project's website. 
Take your time to visit the the project's website, 
navigate throughout online material and 
[Skim the Documentation](link://involvement/SkimTheDocumentation) 
available to developers. 

* If you installed the software using an installer, you probably don’t have the source code. 
Grab the source code and [Do a Mock Installation](link://involvement/DoAMockInstallation).
You may also need to get the development files for the libraries that the project uses.

## Trade-Offs

**Pros:** 

* It might be easier to spot opportunities for contributing to a
project that you already use. The contribution can be a piece of documentation
that is missing, a translation, a feature that you need, or a fix for an annoying bug.

* Since many of your contributions will be useful to yourself (and to people
  with similar needs), you may feel more motivated to contribute.
  
* The more opportunities for contributing, the higher chance that you 
become successful and gain reputation.

**Cons:** 

* By restricting yourself to projects that you already use, you may be
missing the opportunity to contribute to projects that are friendlier to
external contributors.

* You may overlook projects which are a better fit in terms of functionality.

* You may deal with projects that are complex and difficult to deal with.

## Rationale

Developers "scratching their own itches" tend to be more motivated:
the easiest, most straightforward way to make a good contribution is to 
improve something you already use.

Previous use of a FLOSS project tends to facilitate your work as a contributor 
because you may be aware of existing features, bugs and enhancements 
that are necessary. 

Of course, the nice thing is that your contributions will  also be
available for others to use. If your contribution proves to be useful to other
people, it is even better. 
After all, "given enough eyeballs, all bugs are shallow" \cite{raymond1999}, 
and you can use the community feedback to improve your contribution.

## Known Uses

The second author was working on a system to automatically create and configure
user accounts, in the beginning of each academic semester, for the students,
professors and staff of a university \cite{cason2007}. However, sometimes it
was necessary to create new user accounts in the middle of semester, and the
original system was not user-friendly enough to be used on day-to-day
operations by the support team. We were already using
[phpLDAPadmin](http://phpldapadmin.sourceforge.net/), a user-friendly,
web-based LDAP browser and manager, to browse and search user accounts.
However, it did not provide a reliable mechanism to allow the creation of user
accounts according to predefined configurations. Instead of creating a
front-end for our system, we preferred to adapt phpLDAPadmin to our needs,
using our knowledge as users, therefore contributing to the project.

[Pinpoint](http://live.gnome.org/Pinpoint) is an interesting presentation
software: instead of requiring a WYSIWYG interface for designing presentations,
it uses a simple plain text file format, what makes it perfect for
keeping presentations under version control. After the first author started
using Pinpoint for authoring slide presentations, some bugs led him to start
contributing to the project.

[Planner](http://live.gnome.org/Planner) is the GNOME software for project management. 
In a graduate course with an assignment that required selecting a free software project 
to contribute with, one team selected Planner because the members have been using it 
for several years. The students were concerned with Planner and its low-activity community.
They thought that by contributing with Planner, software longevity could be extended. 

## Related Patterns

When you decide to  [Walk on Familiar Ground](link://selection/WalkOnFamiliarGround), 
you may have no specific requirements for features you need 
or technologies you know in mind.
However, you may have to deal with one of two scenarios:
the project you use either adopts technologies you already know or 
technologies that you will have to learn. 

In the former case, you should consider to 
[Look Inside Your Tool Box](link://selection/LookInsideYourToolBox)
and analyse the pros and cons of working with already known technologies.

More likely, though, is that your familiarity with a software that you already use
will lead you to [Explore a Brave New World](link://selection/ExploreABraveNewWorld). 
In this case, you should ponder whether you are willing or not to learn new technologies and 
deal with the problems that may arise when configuring your environment.

## What Next

As a user, you may have installed the software by using an installer or a
binary package. Therefore, your environment might lack dependencies needed to
develop the software (e.g., compilers and libraries). In this case, 
[Do a Mock Installation](link://involvement/DoAMockInstallation) 
to make sure you have everything you need to get started with the code.

You may also [Look for TODO Lists](link://involvement/LookForTodoLists)
to check if there are contributions that you are able to perform. 


