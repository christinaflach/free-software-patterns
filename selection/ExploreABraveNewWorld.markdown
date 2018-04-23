# Explore a Brave New World

**Intent:** Select a FLOSS project to contribute with 
based on the features/functionalities it provides, 
despite the risk of having to deal with unknown technologies.

## Motivation
 
<!---You want to select a FLOSS project to contribute with. -->
You are looking for free software that provides 
a set of features or some functionality you need.
Developing a software that implements such features 
from scratch may not be simple and requires time. 
Finding existing, running software  that implements such features 
is therefore paramount,
even if you have to learn new technologies it requires. 

<!---
Alternatively, you might be looking for a project that requires
technologies you want to learn.
-->

## Problem
How do you find a free software project that meets you functional criteria 
and yet is suitable for contribution?

## Forces

This problem is difficult because:

* _There may be several free software projects providing the functionality you are looking for_. These projects may involve different technologies and characteristics; it may be time-consuming to select a project that fits your requirements and that is also an easy target for your contributions.

* _Making a selection based on functionality only may not be trivial_. The functional aspects of any software project may be complex and hard to identify, and the need of having at least some familiarity with its use or technologies the software uses may not be neglected. 

* _A free software project seems to implement the desired functionality but has some pitfalls_. 
For instance, there are several bugs to be resolved, changeability is a concern, and so on. 

Yet, solving this problem is feasible because:

* _You are eager to learn_. Learning is a common driving force for new undertakings. 
Contributing to a FLOSS project may bring several opportunities for learning
new technologies, development processes, programming  languages
and even social skills. 
Learning new technologies can be a challenging and rewarding endeavor, despite the difficulties. 

## Solution

Focus on functionality rather than other aspects and
look for free software projects that match your functional requirements.
To focus on the functional requirements of the FLOSS project, you will need to:

* Prepare a list with those functional aspects that interest you.

* [Skim the Documentation](link://involvement/SkimTheDocumentation) of each candidate
FLOSS project to identify the features it implements.

* Invest some effort on product assessment. 
When looking at each candidate project, answer these questions: 
    * Does the FLOSS project satisfy your needs in terms of functionality?
    * If you want to integrate the software in a larger solution, how hard would
  that be? For example, if you are looking for a server software, does it have
  a client library available for the language in which your application is
  written?
    * Are the dependencies well documented?

When looking for projects that include some desired functionality, you can
always do a web search. Then, by visiting the website for each project, you
should be able to gather all information you need about functionality,
dependencies, and integration. Sometimes the dependencies are not explicit in
the website, but can be found in the source code package, inside a file such as
`INSTALL` or `README`.

There are, however, other approaches to find relevant projects.
[Wikipedia](http://en.wikipedia.org/) contains a lot of articles comparing
software from particular domains along a set of attributes and features. The
information is presented in tables (software vs. attribute), so it is easy to
find software which include certain features. For example, the article
["Comparison of web server software"][webserver] contains information about
dozens of web servers, including their software license, operating system
support, and support to features such as CGI, SSL, and IPv6.

[webserver]: http://en.wikipedia.org/wiki/Comparison_of_web_server_software

[Freecode](http://freecode.com/), formerly Freshmeat, is a catalog of Linux,
Unix and cross-platform software, most of them open source. You can use
Freecode to find software by doing a textual search, filtering results by
license, programming language, operating system, and tags. The page for each
project contains a summary of the project, user comments, a list of recent
releases, dependencies, links, and other information. 

If you are looking for alternatives to a known project, you can use
[AlternativeTo](http://alternativeto.net/). You can restrict the results to
open source software and apply filters for operating system and tag.

## Trade-Offs

**Pros:** 

* You have a higher chance of finding a project that fulfills your requirements in terms of functionality.

* You will get your job done in a lower amount of time with better chances to
  succeed.

* You will be probably learning a new language or technology.

* You may be successful and end up building your name in the community, that is, gain reputation.

**Cons:** 

* You might end up spending a large amount of effort to get yourself up to speed with the technology used in the project.

* You may have trouble configuring your environment with all the dependencies
  (compiler, libraries, tools etc.), and you may not know where to ask for
  help.

* You may have a hard time to find a project, since the functional aspects of any software project may be complex and hard to identify.

* Other aspects, such as modifiability, if not taken into account, may turn you experience on contributing to a FLOSS project a nightmare.

## Rationale

The need for using or adapting code that implements some functionality may be a highly motivating factor for selecting a FLOSS to contribute with.
Possibly, the software will be ready for use with few adaptations.

Certainly, learning or taming a technology that you are not familiar with
is a challenge, but it may also enhance your professional background and status.
Empirical research suggests that self-development is highly important for software contributors \cite{hars2002}.

Finally, free software projects promote collaboration and other contributors
can help you overcome your difficulties and enhance your technical knowledge.

## Known Uses

[Noosfero](http://noosfero.org) is written in Ruby with some parts of the user
interface written in Javascript, and everyone in the team was confortable with
both Ruby and Javascript. When faced with the task of selecting a XMPP chat
server for Noosfero, however, the team did not find an alternative in Ruby.
[Ejabberd](http://www.ejabberd.im/) was a highly used XMPP server, but it was
written in Erlang, a language that no one in the team had experience with. In
terms of functionality, all the needed libraries for connecting to the server
from both Ruby and Javascript were available. Ejabberd fulfilled all the needs
in terms of functionality, but the team had to understand Erlang code in order
to debug a couple of integration problems.

[Analizo](http://analizo.org/) is written in Perl and the authors found out that
a source code parser was required. 
When looking into existing source code parsers, the authors have found that
[Doxygen](http://doxygen.org/), a documentation system for software projects,
already supported parsing C, C++ and Java. Even though Doxygen was written in
C++, it was used as a base for the source code parser used in Analizo, which
was called Doxyparse. Creating Doxyparse required re-learning the venerable art
of C++ programming.

[Adium](http://www.adium.im/) is a free instant messaging application for Mac OS X 
that can connect to AIM, MSN, Jabber, Yahoo, and more. 
In a graduate course with an assignment that required selecting a free software project 
to contribute with, some students selected Adium because of its features. 
Adium is implemented in Objective-C and 
none of the students were familiar with that language, but they decide to
challenge themselves and explore that new world. 

## Related Patterns

If to \textit{Explore a Brave New World} proves itself a difficult journey, 
you can try the other patterns in this cluster.

To [Walk on Familiar Ground](link://selection/WalkOnFamiliarGround),
you may end up having to learn a new technology as well, 
but the learning curve may be smoother since you are already
familiar with the project as an end user.

It might be easier, in terms of both effort and complexity, to 
[Look Inside Your Tool Box](link://selection/LookInsideYourToolBox). 
You may find projects that provide desired features 
and still avoid dealing with unfamiliar technology.

## What Next

Since you do not necessarily know or use all the technology the new project
requires, you might want start by 
[Doing a Mock Installation](link://involvement/DoAMockInstallation) 
to make sure you have everything you need to get started with the code.

