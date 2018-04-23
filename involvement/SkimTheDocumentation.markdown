# Skim the Documentation

**Intent:** Assess the relevance of the documentation by reading it in a limited amount of time.

## Problem

How to identify those parts of the documentation that might be of help?

This problem is difficult because: 

* Documentation, if present, is usually intended for the development team or the end users and as such not immediately relevant for reengineering purposes. Worse, it is typically out of date with respect to the current state of affairs, thus it may contain misleading information.
* You do not yet know how the reengineering project will proceed, hence you cannot know which parts of the documentation will be relevant.

Yet, solving this problem is feasible because: 

* Some form of documentation  is available, so at least there is a description that was intended to help the humans concerned with the system.
* Your reengineering project has a clear goal , so you can select those parts of the documentation that may be valuable and those parts that will be useless.


## Solution 

Prepare a list summarizing those aspects of the system that seem interesting for your reengineering project. Then, match this list against the documentation and meanwhile make a crude assessment of how up to date the documentation seems. Finally, summarize your findings in a short report, including:

* a general assessment of whether the system documentation will be useful and why (not);
* a list of those parts of the documentation that seem useful and why (requirement specifications, desired features, important constraints, design diagrams, user and operator manuals);
* for each part, an impression of how up to date the description is.


### Hints 

Depending on the goal of the reengineering project and the kind of documentation you have at your disposal, you may steer the reading process to match your main interest. For instance, if you want insight into the original system requirements then you should look inside the system specification, while knowledge about which features are actually implemented should be collected from the end-user manual or tutorial notes. If you have the luxury of choice, avoid spending too much time trying to understand the design documentation (ie class diagrams, database schemas, ...): rather record the presence and reliability of such documents as this will be of great help in the later stages of reengineering. 

Check whether the documentation is outdated with respect to the actual system. Always compare version dates with the date of delivery of the system and make note of those parts that you suspect are unreliable. 

The fact that you are limited in time should force you to think how you can extract the most useful information. Below are some hints for things to look out for.

* A table of contents  gives you a quick overview of the structure and the information presented.
* Version numbers and dates  tell you how up to date that part of the documentation is.
* Figures  are a a good means to communicate information. A list of figures, if present, may provide a quick access path to certain parts of the documentation.
* Screen-dumps, sample print-outs, sample reports, command descriptions , reveal a lot about the functionality provided by the system.
* Formal specifications  (eg state-charts), if present, usually correspond with crucial functionality.
* An index , if present contains the terms the author considers significant.

## Tradeoffs 

### Pros 

* Provides a high abstraction level. 
Documentation is supposed to be read by humans, thus at a certain level of abstraction. It may be that this abstraction level is not high enough for your reengineering project, but at least you can skip a few decoding steps.

* Focus on relevant parts. 
By preparing yourself with a list of what seems interesting the reading session becomes goal-oriented, as such increasing your chances of finding something worthwhile. Moreover, by making a quick assessment of how up to date the description is, you avoid to waste time on irrelevant parts.


### Cons 


* Misses crucial facts. 
A quick read in overview mode is likely to miss crucial facts recorded in the documentation. However, you can counter this effect to some degree by preparing yourself a list of what you would like to find.

* You may find irrelevant information only. 
There is a small chance that not a single part of the documentation seems relevant for your reengineering project. Even in such a situation, the time spent on reading is worthwhile because now you can justify not to worry about the documentation.


### Difficulties 


* Targets a different audience. 
Documentation is costly to produce, hence is written for the end users (eg user manuals) or the development team (eg design). Documentation is also costly to maintain, hence only the stable parts of the system are documented. Consequently, the information you find may not be directly relevant, hence will require careful interpretation.

* Documentation contains inconsistencies. 
Documentation is almost always out of date with respect to the actual situation. This is quite dangerous during the early phases of a reengineering project, because you lack the knowledge to recognize such inconsistencies. Consequently, avoid to make important decisions based on documentation only -- first verify your findings by other means (in particular, ReadAllTheCodeInOneHour and InterviewDuringDemo).


## Example 

After your informal chat with Dave and your code reading sessions you have some general idea what would be the interesting aspects of the system. You decide to skim through the documentation to see whether it contains relevant information.

You prepare yourself by compiling a list of aspects you would like to read about. Besides obvious items like design diagrams, class interface descriptions (Javadoc?) and database schema, the list includes Euro (does the user manual say something about Euro conversions?) and the specification of internet protocol.

Next, you go to Dave and ask him for all of the documentation concerning the software system. Dave looks at you with a small grin on his face:"You're not really gonna read all of that, are you?""Not exactly," you say to him,"but at least I want to know whether we can do something with it". Dave looks in the box he has given you earlier and hands you three folders full of paper --- the design documentation --- and one booklet --- the user manual.

You start with the user manual and --- bingo: in the index you discover an entry for Euro. Turning to the corresponding pages, you see that the Euro is actually a chapter on its own consisting of about five pages, so you mark those page numbers for further study. Next you skim through the table of contents and there you notice a title"Switching to French / German". Reading these pages you see that localizing the software is a documented feature. Localizing wasn't in your checklist but it is still important so you gladly add a note about it. All of this looks rather promising, so you verify the release date of the user manual and you see that it is quite recent. A good start indeed!

Opening the first folder (entitled"Classes") of the design documentation, you find more or less what you were expecting: a print-out of the class interface as generated by Javadoc. Not that interesting to read on paper, but you continue to leaf through the pages anyway. Your first impression is that the actual descriptions coming with each of the classes and methods are quite shallow. An impression which gets confirmed when you examine three random pages in more detail. Next, you look for descriptions for those classes interfacing with the C-code implementing the internet protocol and there you even find empty descriptions. The litmus test with the release date of the documentation reveals that this documentation is quite old, so you make a note to check the online documentation.

The second folder contains a nice surprise: it is a generated description of the database schema, describing for each table what the purpose of each column is. Just like with the Javadoc class interface descriptions, the documentation itself is quite shallow but at least you have a way of finding what each record in the database is supposed to represent. Here as well, the litmus test with the document release date tells you to verify the online version of the same documentation.

At first glance, the third folder seems to contain rubbish: various copies of miscellaneous documents which seem only vaguely related with your project. The first document is a price-list for medicines, the next ten are extracts from the health care legislation. Still you continue to leaf through the pages and you stumble upon some finite state diagrams which appear to describe the internet protocol used to communicate with the health insurances. Apparently, the document is a copy from some pages out of a technical specification but unfortunately no references to the original are included. Even the release date for this document is missing, so you don't have the means to verify whether this specification is outdated.

You conclude the reading session with the following report:

* User manual is clear and up-to date: good source for black-box description of functionality.
* Euro is provided for (pp. 513-518); localization as well (pp. 723-725).
* Class interfaces descriptions are generated; shallow but verify on line.
* Documentation for database schema is generated; shallow but verify on line.
* Finite state-machines for the internet protocol? Status questionable: verify with Dave.
* One folder containing miscellaneous documents (price-lists, instruction leaflets, ...)


## Rationale 

"It is not unusual for a software development organization to spend as much as 20 or 30 percent of all software development effort on documentation." 
Roger Pressman

Documentation, as opposed to source code, is intended to explain the software system at an abstraction level well suited for humans. Therefore, the documentation will certainly contain information"nuggets"; the only problem is how to find the relevant ones. Finding relevant information is made difficult because of two typical circumstances present in almost all reengineering projects.

"All of the case-studies face the problem of non-existent, unsatisfactory or inconsistent documentation." 
ESEC/FSE 1997 Workshop on Object-Oriented Re-engineering

First of all, the documentation is likely to be out of sync with respect to the actual situation. For the five case-studies we investigated during the FAMOOS  project,"insufficient documentation" was the only problem all maintainers complained about. Nevertheless, even outdated information may be useful, because at least it tells you how the system was supposed to behave in the past. This is a good starting point to infer how it is used today.

"The documentation that exists for these systems usually describes isolated parts but not the overall architecture. Moreover, the documentation is often scattered throughout the system and on different media." Kenny Wong 

Second, documentation is normally produced in a forward engineering context, hence not intended for reengineering purposes. Generated design documentation (eg database schemas, Javadoc) for instance, is typically quite up-to date, yet too fine-grained to be useful during the initial phases of a reengineering project. User manuals are black box descriptions of the software system, and thus cannot serve as blueprints of what's inside the boxes. Here as well you should see the documentation as a good starting point to infer what you're really interested in.

## Known Uses 

A study by Fjeldstadt and Hamlen reported that"in making an enhancement, maintenance programmers studied the original program about three-and-a-half times as long as they studied the documentation, but just as long as they spent implementing the enhancement." This equation gives a good impression of the relative importance studying the documentation should have.

"The case-study began with an effort to understand the existing design of CTAS in general and the CM in particular. --- The documentation for CTAS includes motivation and architecture overview, software structures, user manuals and research papers on the underlying algorithms. However, there appears to be no document that explains in high-level terms what the system computes or what assumptions it makes about its environment. Nor is there a design document that explains the relationship between the CTAS components: how they communicate, what services they offer, and so forth. We were forced to infer this information from the code, a challenge common to many commercial development efforts." Daniel Jackson 

The above quotation summarizes quite well that you need to study the documentation, yet that it will not tell you all you need to know. The case-study they are referring to concerns an air-traffic control system (CTAS) where they reverse- and reengineered a key component Communications-Manager (CM) of about 80 KLOC C++ code.

The following anecdote reveals how documentation might mislead you. In one of the FAMOOS  case-studies we were asked to evaluate wether a distributed system connecting about a dozen subsystems could be scaled up to connect approximately hundred subsystems. During this evaluation, we studied the class responsible for maintaining all of the TCP/IP connections where the comments described how all of the open connections were maintained in a kind of look-up table. We did find a look-up table in the code, but we were unable to map the description of how it worked back to operations manipulating the table. After half a day of puzzling, we gave up and decided to ask the maintainer. His matter-of-fact response was,"Ah, but this class comment is obsolete. Now that you mention it, I should have deleted it when I redesigned that class."

## What Next 

You may want to ReadAllTheCodeInOneHour immediately after SkimTheDocumentation  to verify certain findings. It may also be worthwhile to ChatWithTheMaintainers and InterviewDuringDemo to confirm certain suspicions.

At the end of your first contact with the system, you should decide on how to proceed with (or cancel) the project. Once you have discovered relevant documentation you know that you at least do not have to reproduce this information. Even better, for those parts of the documentation that are relevant but seem inaccurate you have some good starting points for further exploration (for instance AnalyzeThePersistentData  and SpeculateAboutDesign).

