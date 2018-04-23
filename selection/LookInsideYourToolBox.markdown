# Look Inside Your Tool Box

**Intent:** Select a FLOSS project to contribute with based on technologies that you already know or use in your working environment. 
For example, if you have good programming experience with a particular
programming language, choose a project written in that language to contribute with.

## Motivation

You are willing to contribute to a FLOSS project without having 
to learn a new programming language
or to introduce unknown technologies in your working environment.
It may be the case that you and your team are very productive with 
certain technologies such as Java and MySQL.
Or you are working with other developers in existing projects, 
and all of them are using C#. 

## Problem

How can you find a FLOSS project to contribute with, 
given one or more technological constraints?

## Forces

* _Self-confidence_. Your programming abilities in a certain technology
make you feel confident to overcome entry barriers and possibly perform better
contributions to the project.

* _You are looking for a project to be incorporated in an existing solution_. 
For example, you may be looking for a library to be used by an existing
  application. In this case, you need the library to be written in the same
  programming language as the application.

* _You do not want or have time to learn new things_. 
  Your company has to add new functionality based on an existing project, 
  but cannot afford the time required to get up to speed with 
  new and unknown technologies and tools.

* _Organizational barriers_. Your organization has a strict policy
  for approving any new technology before it can be introduced, and you would
  rather avoid the trouble.

* _The adoption of a new technology might impose prohibitive costs_.
For example, adopting an interpreted programming language for embedded software
  development will require adding extra storage capacity to devices in order to
  install the language interpreter.

## Solution

Look for projects that match your criteria for acceptable technology. 
Acceptable technologies are those that you are familiar with, 
that are approved by your organization or teammates, 
or that integrate nicely with your existing environment.

If your criteria includes a specific programming language, you might start by
looking for projects in language-specific repositories. For example, most Perl,
Ruby and Python projects are listed in [CPAN](http://www.cpan.org/),
[Rubygems](http://rubygems.org/) and [PyPI](http://pypi.python.org/), their
respective community repositories.

Sometimes your criteria will not be the programming language, 
but other parts of an application architecture, such as a database system. 
For example, you want to check whether that new content management system 
you are evaluating supports the relational database system approved 
by your organization.
You can lookup projects in [Freecode](http://freecode.com/) (formerly
Freshmeat), which is a catalog of Linux, Unix and cross-platform software, most
of them open source. You can filter the list of projects by programming
language and by tags, which are assigned by users. Some tags refer to
particular technologies supported or used by the project, such as a database
system or a particular software library. 
A similar service is [Ohloh](http://www.ohloh.net/). 
You can use it, for example, to look for
[content management systems written in PHP with support for
MySQL databases](http://www.ohloh.net/tags/cms/php/mysql).

## Trade-Offs

**Pros:** 

* The learning curve to engage into the project is possibly minimized since 
you are dealing with known technologies or tools.

* Your environment is probably already configured for the project, or at least
  you know how to install the dependencies.

* You can make contributions of better technical quality since you are familiar
  with the technologies.
  
* You may be successful, gain reputation and even a job 
(companies seeking programmers with particular skills 
 can find potential hires by examining open source software code).

**Cons:** 

* When you limit your choice by the technology criteria, 
you might exclude projects that would be a better fit in terms of functionality.

* If you always stick to technologies you know, you may have trouble learning
  new tools that might prove themselves to be more useful in some contexts. For
  example, you could end up developing web applications in COBOL, although it
  lacks important libraries for web programming that are available for other languages.

## Rationale

If you select  a FLOSS project that uses acceptable technology,
you can concentrate on other project issues
-- for instance, understanding implemented features 
or getting comfortable with its development process.

Besides, you will probably provide better technical contributions to the
project.  When writing code, you may apply your knowledge about 
programming idioms, pitfalls to be avoided,
supporting technologies and tools, guidelines that should be followed, etc. 
You may also find and fix bugs more easily, help on technical documentation, etc.

## Known Uses

Back in 2006, we started working on a model transformation research project
called TEMA.  At that time, the majority of software technology for model
transformation was in Java, but the developer involved in the project preferred
Ruby. He looked for model transformation projects in Ruby, and found
[RMOF](http://rubyforge.org/projects/rmof/). The project ended up contributing
a substantial amount of code to the RMOF project.

One of the authors was looking for an extensible text editor to support his
daily work. Also, he didn't want to spend too much time learning how to write
extensions -- the editor was supposed to support the work, not to prevent it
from being done. Vim and Emacs, traditional text editors, were not good options,
because Vim uses its own scripting language, and Emacs uses a variant of Lisp,
with which the author is not familiar. The author ended up choosing an editor
written in Python (with extensions also written in that language) and started
contributing to existing extensions that provided most of the features he needed
to support his workflow.

Chances are high that you and your teammates have already used this pattern many times. 
For example, it can be a web framework in PHP that you chose because you master
programming in PHP, or a library in Java that you chose because it integrates
well with other libraries you are using. 
This is a very common pattern in practice.

## Related Patterns

Sometimes, familiarity with the software is more important than mastering
programming languages or other technologies. In this case, you might prefer
to [Walk on Familiar Ground](link://selection/WalkOnFamiliarGround).

If, on the other hand, functionality is more important than familiarity, you can
always [Explore a Brave New World](link://selection/ExploreABraveNewWorld). 
However, you may discover that the project that best matches the desired functionality 
uses technology you are not comfortable with.

## What Next

After choosing a project using technology-based criteria, you should probably
[Do a Mock Installation](link://involvement/DoAMockInstallation) to reaffirm
your certainty that the technology is under control.
