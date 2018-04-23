#  Read all the Code in One Hour

**Intent:** Assess the state of a software system by means of a brief, but intensive code review.

## Problem

How can you get a first impression of the quality of the source code?

This problem is difficult because:

* The quality of the source code will vary quite a lot, depending on the people that have been involved in the development and maintenance of the system.
* The system is large, so there is too much data to inspect for an accurate assessment.
* You're unfamiliar with the software system, so you do not know how to filter out what's relevant.

Yet, solving this problem is feasible because:

* You have reasonable expertise with the implementation language being used, thus you can recognize programming idioms and code smells.
* Your reengineering project has a clear goal, so you can assess the kind of code quality required to obtain that goal.

## Solution

Grant yourself a reasonably short amount of study time (ie approximately one hour) to read the source code. Make sure that you will not be disturbed (unplug the telephone and disconnect your e-mail) and take notes sparingly to maximize the contact with the code. 

After this reading session, produce a short report about your findings, including:

* a general assessment of whether reengineering seems feasible and why (not);
* entities which seem important (ie classes, packages);
* suspicious coding styles discovered (ie "code smells");
* parts which must be investigated further (ie tests).

Keep this report short, and name the entities like they are mentioned in the source code.

### Hints

The "time is scarce" principle demands some preparation. A checklist might help you focus your effort during the reading session. Such a checklist may be compiled from various sources.

* The development team may have employed code reviews as part of their quality assurance. If they did, make sure you incorporate the checklists used during the reviews. If they didn't, try some generic checklists used to review the kind of code you are dealing with.
* Some development teams applied coding styles and if they did, it is good to be aware of them. Naming conventions especially are crucial to scan code quickly.
* The programmers might have used coding idioms (ie C++, Smalltalk) which help you recognize typical language constructs.
* You probably have some questions that you would like an answer to.

Below are some additional items you might add to your checklist because they provide good entry points for further examination.

* Functional tests and unit tests convey important information about the functionality of a software system. They can help to verify whether the system is functioning as expected, which is very imported during reengineering (see TestsYourLifeInsurance).
* Abstract classes and methods reveal design intentions.
* Classes high in the hierarchy often define domain abstractions; their subclasses introduce variations on a theme.
* Occurrences of the Singleton pattern may represent information that is constant for the entire execution of a system.
*  Surprisingly large structures often specify important chunks of functionality.
* Comments reveal a lot about the design intentions behind a particular piece of code, yet may often be misleading.

## Tradeoffs

### Pros

* Start efficiently.
Reading the code in a short amount of time is very efficient as a starter. Indeed, by limiting the time and yet forcing yourself to look at all the code, you mainly use your brain and coding expertise to filter out what seems important.
* Judge sincerely.
By reading the code directly you get an unbiased view of the software system including a sense for the details and a glimpse on the kind of problems you are facing. Because the source code describes the functionality of the system --- no more, no less --- it is the only accurate source of information.
* Learn the developers vocabulary.
Acquiring the vocabulary used inside the software system is essential to understand it and communicate about it with other developers. This pattern helps to acquire such a vocabulary.

### Cons

* Obtain low abstraction.
Via this pattern, you will get some insight in the solution domain, but only very little on how these map onto problem domain concepts. Consequently, you will have to complement the information you obtained with other, more abstract representations (for instance SkimTheDocumentation and InterviewDuringDemo).


### Difficulties

* Does not scale.
Reading all the code does not scale very well, from our experience a rate of 10,000 lines of code per hour is reasonable. When facing large or complex code, don't try to spend more time to read more code as intensive reading is most effective when done is short bursts of time (no more than 2 hours). Instead, if you have a clear criterion to split the source code, try to pass a series of sessions. Otherwise, just go through all of the code and mark those parts that seem more important than others (based on ChatWithTheMaintainers) and then read in different sessions.

However, given the "Time is Scarce" principle, you should force yourself to be brief. Consequently, when dealing with large or complex code, don't bother too much with the details but remind yourself of the goal of reading the code, which is an initial assessment of the suitability for reengineering.

* Comments may mislead you.
Be careful with comments in the code. Comments can help you in understanding what a piece of software is supposed to do. However, just like other kinds of documentation, comments can be outdated, obsolete or simply wrong. Consequently, when finding comments mark on your checklist whether it seems helpful and whether it seems outdated.

## Example

From the discussion with Dave (the sole person left from the original development team and the one responsible for the low-level C-code) you recall that their system was mainly written in Java, with some low-level parts written in C and the database queries in SQL. You have experience with all these languages, so you are able to read the code.

You start by preparing a check-list and besides the normal items (coding styles, tests, abstract classes and methods, classes high in the hierarchy, …) you add a few items concerning some questions you want resolved. One of them is "Readability of the C-code", because you want to verify the coding style of Dave, your new team member. A second is the "Quality of the database schema", because you know that the data of the two systems sooner or later will have to be integrated. A third is the "Handling of currencies", because Switzerland will join the Euro-region and within six months all financial data must be converted to this new currency.

From reading the C-code, you learn that this part is quite cryptic (short identifiers with mysterious abbreviations, long multi-exit loops, ...). Nevertheless, the modules handling the internet protocols have unit tests, which makes you feel more confident about the possibility to incorporate them into your system.

The Java code presents a problem of scale: you can't read 50.000 lines of code in a single hour. Therefore, you pick some files at random and you immediately discover that most class names have a two-character prefix, which is either UI or DB. You suspect a naming convention marking a 2-tiered architecture (database layer and user-interface layer) and you make a note to investigate this further. Also, you recognize various class- and attribute names as being meaningful for the health care domain (such as Class DBPatient with attributes name, address, health insurance, …). You even perceive a class DBCurrency, so you suppose that switching to Euro won't cause a lot of problems, since the developers took the necessary precautions. Most of the classes and methods have comments following the Javadoc conventions, so you suspect that at least some of the documentation will be up-to date. Finally, you identified a large singleton object which contains various strings that are displayed on the screen, which leads you to conclude that it will even be possible to localize the system.

All this looks rather promising, however there are also a number of discouraging observations. What makes you most pessimistic is the presence of numerous long methods with large parameter lists and complex conditionals. Many of them seem to mix UI-logic (enabling/disabling of buttons and menu-items) with business-logic (updating database records). One thing (the calculation of prices) seems especially complicated and you make a note to investigate this further.

Concerning the database, you again recognize various table names and column names that are meaningful in the context of the health care domain. At first glance, the schema looks normalized, so here as well reverse engineering seems promising. The database also employs some stored procedures, which warrants further investigation.

After the reading session, you summarize your conclusions in the following note.

* Incorporating the internet protocols is feasible: unit-tests and responsible programmer available.
* Suspect a 2-tiered architecture based on naming convention. What about the business logic -- mixed in with UI? (further verification!)
* Readable code with meaningful identifiers; reverse engineering looks promising.
* Currency object is present: Euro-conversion looks feasible (further investigation!)
* Javadoc conventions used; verify documentation.
* Calculation of prices seems complicated; why?
* Database schema looks promising. Stored procedures requires further investigation.

## Rationale

Code reviews are widely acknowledged as being a very effective means to find problems in programs written by peers. Two important prerequisites have to be met in order to make such reviews cost-effective: (a) a checklist must be prepared to help the reviewer focus on the relevant questions and (b) a review session must be kept short because reviewers cannot concentrate for a very long time (2 hours at maximum).

I took a course in speed reading and read "War and Peace" in twenty minutes. It's about Russia. Woody Allen


There is an important difference between traditional code reviews and the ones you perform during your first contact with a software system. The former is typically meant to detect errors, while the latter is meant to get a first impression. This difference implies that you need to care less about details and thus that you can read more code. Typical guidelines for code-reviews state that about 150 statements per hour can be reviewed. However, during your first contact you don't need such a detailed analysis and thus can increase the volume of code to be reviewed. We didn't perform any serious empirical investigation, but from our experience 10,000 lines of code per hour seems reasonable.

## Known Uses

The original pattern was suggested by Kent Beck, who stated that it is one of the techniques he always applies when starting a consultant job on an existing system. Robson reports code reading as "the crudest method of gaining knowledge about a system" and acknowledges that it is the method most commonly used to understand an existing program. Some case studies reports also mention that reading the source code is one of the ways to start a reengineering project.

While writing this pattern, one of our team members applied it to reverse engineer the Refactoring Browser. The person was not familiar with Smalltalk, yet was able to get a feel for the system structure by a mere inspection of class interfaces. Also, a special hierarchy browser did help to identify some of the main classes and the comments provided some useful hints to what parts of the code were supposed to do. Applying the pattern took a bit more than an hour, which seemed enough for a relatively small system and slow progress due to the unfamiliarity with Smalltalk.

One particularly interesting occurrence of this pattern took place towards the end of the FAMOOS project. During the course of one week, a heterogeneous team of reverse engineers went for an on-site visit to participate in a kind of reverse engineering contest. The assignment was to invest four days and use the available reverse engineering tools to learn as much as possible about a particular C++ system. The fifth day was then used to report the findings to the original developers for verification. One of the team members finished his assignment too early, and took the opportunity to ReadAllTheCodeInOneHour. It turned out that this one person had a much better overview of the system: he could participate in all discussions and could even explain some of the comments of the developers.

## What Next

After you ReadAllTheCodeInOneHour you should DoAMockInstallation to evaluate the suitability for reengineering. You may complement your findings if you SkimTheDocumentation and carry out an InterviewDuringDemo to maximize your chances of getting a coherent view of the system. Before actually making a decision on how to proceed with the reengineering project, it is probably worthwhile to ChatWithTheMaintainers once more.

At the end of your first contact with the system, you should decide on how to proceed with (or cancel) the project. Reading the code will influence this decision in various ways. First of all, you have assessed the quality of the code (ie the presence of coding idioms and suspicious coding styles) and thus of the feasibility of reengineering project. Second, you have identified some important entities, which are good starting points for further exploration. 

The list of the important entities (ie classes, packages, ...) resulting from Read all the Code in One Hour can be used to start Analyze the Persistent Data andStudyTheExceptionalEntities. This way you can refine your understanding of the source code, especially the way it represents the problem domain.
