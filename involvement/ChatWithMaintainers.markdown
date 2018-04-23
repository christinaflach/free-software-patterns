# Chat with the Maintainers

**Intent**: Learn about the historical and political context of your project through discussions with the people maintaining the system.

## Problem

How do you get a good perspective on the historical and political context of the legacy system you are reengineering?

This problem is difficult because:

* Documentation, if present, typically records decisions about the solution, not about the factors which have influenced that solution. Consequently, the important events in the history of the system (ie its historical context) are rarely documented.
* The system is valuable (otherwise they wouldn't bother to reengineer it) yet management has lost control (otherwise they wouldn't need to reengineer the system). At least some of the people related issues concerning the software system are messed up, thus the political context of a legacy system is problematic by nature.
* Persons working with the system might mislead you. Sometimes people will deliberately deceive you, especially when they are responsible for the problematic parts of the system or when they want to protect their jobs. Most of the time they will mislead you out of ignorance, especially when chief developers are now working on other projects and the junior staff are the only ones left for system maintenance.

Yet, solving this problem is feasible because:

* You are able to talk to the maintenance team. While they might not know everything about the original system context, they most likely know a great deal about how the system got to its current state.

## Solution

Discuss with the system maintainers. As technical people who have been intimately involved with the legacy system, they are well aware of the system's history and the people-related issues that influenced that history.

To avoid misleading information, treat the maintainers as "brothers in arms". Try to strike a kind of bargain where you will make their job easier (more rewarding, more appreciated, --- whatever is most likely to convince them) if they will just take some time to explain you about what they are doing. This has the extra benefit that it will gain you the respect you need for the later phases of your reengineering project.

## Hints

Here are some questions that may help you while discussing with the maintainers. It is best to ask these questions during an informal meeting (no official minutes, no official agenda) although you should be prepared to make notes after the meeting to record your main conclusions, assumptions and concerns.

* What was the easiest bug you had to fix during the last month? And what was the most difficult one? How long did it take you to fix each of them? Why was it so easy or so difficult to fix that particular bug?

Those kinds of questions are good starters because they show that you are interested in the maintenance work. Answering the questions also gives the maintainers the opportunity to show what they excel at, which will make them less protective of their job. Finally, the answers will provide you with some concrete examples of \ind{maintenance} problems you might use in later, more high-level discussions.

* How does the maintenance team collect \ind{bug reports} and feature requests? Who decides which request gets handled first? Who decides to assign a bug report or feature request to a maintainer? Are these events logged in some kind of database? Is there a version or configuration management system in place?

These questions help to understand the organization of the maintenance process and the internal working habits of the maintenance team. As far as the political context concerns, it helps to assess the relationship within the team (task assignment) and with the end users (collection of bug reports).

* Who was part of the development/maintenance team during the course of years? How did they join/leave the project? How did this affect the release history of the system?

These are questions which directly address the history of the legacy system. It is a good idea to ask about persons because people generally have a good recollection of former colleagues. By afterwards asking how they joined or left the project, you get a sense for the political context as well.

* How good is the code? How trustworthy is the documentation?

This question is especially relevant to see how well the maintenance team itself can assess the state of the system. Of course you will have to verify their claims yourself afterwards (see ReadAllTheCodeInOneHour and SkimTheDocumentation).

* Why is this reengineering project started? What do you expect from this project? What will you gain from the results?

It is crucial to ask what the maintainers will gain from the reengineering project as it is something to keep in mind during the later phases. Listen for differences -- sometimes subtle -- in what management told you they expect from the project and what the maintainers expect from it. Identifying the differences will help you get a sense of the political context.

## Tradeoffs

### Pros

* Obtains information effectively.
Most of the significant events in the life-time of a software system are passed on orally. Discussing with the maintainers is the most effective way to tap into this rich information source.

* Get acquainted with your colleagues.
By discussing with the maintainers you have a first chance to appraise your colleagues. As such, you're likely to gain the necessary credibility that will help you in the later phases of the reengineering project.

### Cons

* Provides anecdotal evidence only.
The information you obtain is anecdotal at best. The human brain is necessarily selective regarding which facts it remembers, thus the recollection of the maintainers may be insufficient. Worse, the information may be incomplete to start with, since the maintainers are often not the original developers of the system. Consequently, you will have to complement the information you obtained by other means (see for instance SkimTheDocumentation, InterviewDuringDemo, ReadAllTheCodeInOneHour and DoAMockInstallation).

### Difficulties

* People protect their jobs.
Some maintainers may not be willing to provide you with the information you need because they are afraid of losing their jobs. It's up to you to convince them that the reengineering project is there to make their job easier, more rewarding, more appreciated. Consequently, you should ask the maintainers what they expect from the reengineering project themselves.

* Teams may be unstable.
Software maintenance is generally considered a second-class job, often left to junior programmers and often leading to a maintenance team which changes frequently. In such a situation, the maintainers cannot tell you about the historical evolution of a software system, yet it tells you a great deal about its political context. Indeed, you must be aware of such instability in the team, as it will increase the risk of your project and reduce the reliability of the information you obtain. Consequently, you should ask who has been part of the development/maintenance team over the course of the years.

## Example

While taking over XDoctor, your company has been trying to persuade the original development team to stay on and merge the two software systems into one. Unfortunately, only one member -- Dave -- has agreed to stay and the three others have left for another company. As it is your job to develop a plan for how to merge the two products, you invite Dave for lunch to have an informal chat about the system.

During this chat you learn a great deal. The good news is that Dave was responsible for implementing the internet communication protocols handling the transactions with the health insurances. As this was one of the key features lacking in your product, you're happy to have this experience added to your team. More good news is that Dave tells you his former colleagues were quite experienced in object-oriented technology, so you suspect a reasonable design and readable source code. Finally, you hear that few bug reports were submitted and that most of them have been handled fast. Likewise, the list of pending product enhancements exists and is reasonably small. So you conclude that the customers are quite happy with the product and that your project will be strategically important.

The not so good news is that Dave is a hard core C-programmer who was mainly ignored by his colleagues and left out of the design activity for the rest of the system. When you ask about his motives to stay in the project he tells you that he originally joined because he was interested to experiment with internet technology but that he is kind of bored with the low-level protocol stuff he has been doing and wants to do more interesting work. Of course, you ask him what he means with "more interesting" and he replies that he wants to program with objects.

After the discussion, you make a mental note to check the source code to assess the quality of the code Dave has written. You also want to have a look at the list of pending bugs and requests for enhancements to compare the functionality of the two products you are supposed to merge. Finally, you consider contacting the training department to see whether they have courses on object-oriented programming as this may be a way to motivate your new team member.

## Rationale

"The major problems of our work are not so much technological as sociological in nature".

Accepting the premise that the sociological issues concerning a software project are far more important then the technological ones, any reengineering project must at least know the political context of the system under study.

"Organizations which design systems are constrained to produce designs which are copies of the communications structure of these organizations".

\ind{Conway's law} is often paraphrased as: "If you have 4 groups working on a compiler; you'll get a 4-pass compiler".

One particular reason why it is important to know about the way the development team was organized, is because it is likely that this structure will somehow reflect the structure of the source code.

A second reason is that before formulating a plan for a reengineering project, you must know the capabilities of your team members as well as the peculiarities of the software system to be reverse engineered. Discussing with the maintainers is one of the ways --- and given the "time is scarce" principle, a very efficient one -- to obtain that knowledge.

"Maintenance fact 1. In the late `60s and throughout the 70's, production system support and maintenance were clearly treated as second-class work. Maintenance fact 2. In 1998, support and maintenance of production systems continues to be treated as second-class work."

While talking with the maintainers, you should be aware that software maintenance is often considered second-class work. If that's the case for the maintenance team you are talking with, it may seriously disturb the discussion. Either because the maintenance team has changed frequently, in which case the maintainers themselves are unaware of the historical evolution. Or because the people you discuss with are very protective about their job, in which case they will not tell you what you need to know. 

## Known uses

During our experience with reengineering projects we made it a habit to kick-off the project during a meeting with the maintenance team. Only in retrospect did we understand how crucial such a meeting is to build up the trust required for the rest of the project. We learned the hard way that maintainers are very proud about their job and very sensitive to critique. Therefore, we emphasize that such a kick-off meeting must be "maintainer oriented", i.e. aimed to let the maintainers show what they do well and what they want to do better. Coming in with the attitude that you -- the newcomer -- will teach these stupid maintainers how to do a proper job will almost certainly lead to disasters.

"The RT-100 -- was developed by a third-party software vendor in the late 1980s and acquired by Nortel in 1990. For the next three years Nortel enhanced and maintained it before outsourcing it to another vendor to be systematically rewritten. This effort failed and the system was returned to Nortel in mid 1994. By this time, the original design team has been disbanded and scattered, and the product's six customers organizations were quite unhappy.
RT-100 was assigned to Nortel's Atlanta Technology Park laboratory. No staff members there had any experience with ACD software, and, due to another project's cancellation, staff morale was quite low."

The above quote is from a paper which describes the story of a reengineering project, and depicts very well the typical desperation a reengineering project had to start with. Yet -- as described in the paper itself -- this early assessment of the historical and political context made it possible for the project to succeed, because they knew very well which factors would make the stakeholders happy and consequently could motivate the new reengineering team.

In one of the case-studies of the DESEL project (Designing for Ease of System Evolution), Stephen Cook reports that it is crucial to talk to the maintainers as they know best which aspects of the domain are likely to change and which ones are likely to remain stable. As such, the maintainers have submerged knowledge about how the system could have been built, knowledge which is seldom documented. Yet, during this discussion one must emphasize a "design for evolution' mind-set, to force the maintainers to detach themselves from the latest problems they have been solving.

## Related Patterns

There are several pattern languages which explicitly deal with the way a software development team is organized. Although meant for a forward engineering situation, it is good to be aware of them while discussing with the maintainers, because it may help you assess the situation more quickly.

## What Next

During the discussion, you should avoid jumping to conclusions. Therefore, make sure that whatever you learn out of the discussion is verified against other sources. Typically these sources are the people working with the system (InterviewDuringDemo), the documentation (SkimTheDocumentation) and the system itself (ie ReadAllTheCodeInOneHour, DoAMockInstallation).

With this verification, you have a solid basis to write down an initial plan for tackling the legacy system, including the possibility to cancel the project altogether. The discussion with the maintainers will influence this plan in various ways. First of all, you have a sense for the willingness of the maintenance team to cooperate, which will affect the work plan considerably. Second, you know the history of the system, including those parts that make it valuable and those events that caused most of the maintenance problems. Your plan will aim to resurrect the valuable parts and tackle those maintenance problems. Third, you have a sense for how the maintenance team communicates with the other stakeholders, which is important to get the plan accepted.

