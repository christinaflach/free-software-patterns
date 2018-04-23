# Interview During Demo

**Intent:** Obtain an initial feeling for the appreciated functionality of a software system by seeing a demo and interviewing the person giving the demo.

## Problem

How can you get an idea of the typical usage scenarios and the main features of a software system?

This problem is difficult because:

* Typical usage scenarios vary quite a lot depending on the type of user.
* If you ask the users, they have a tendency to complain about what's wrong, while for reverse engineering purposes you're mainly interested in what's valuable.
* The system is large, so there is too much data to inspect for an accurate assessment.
* You're unfamiliar with the software system, so you do not know how to filter out what's relevant.

Yet, solving this problem is feasible because:

* You can exploit the presence of a working system and a few users who can demonstrate how they use the software system.

## Solution

Observe the system in operation by seeing a demo and interviewing the person who is demonstrating. Note that the interviewing part is at least as enlightening as the demo. 

After this demo, take about the same amount of time to produce a report about your findings, including:

* some typical usage scenarios;
* the main features offered by the system and whether they are appreciated or not;
* the system components and their responsibilities; 
* bizarre anecdotes that reveal the folklore around using the system.

### Hints

The user who is giving the demo is crucial to the outcome of this pattern so take care when selecting the person. Therefore, do the demonstration several times with different persons giving the demo. This way you will see variations in what people find important and you will hear different opinions about the value of the software system. Always be wary of enthusiastic supporters or fervent opponents: although they will certainly provide relevant information, you must spend extra time to look for complementary opinions in order to avoid prejudices. 

Below are some hints concerning people you should be looking for, what kind of information you may expect from them and what kind of questions you should ask. Of course which people you should talk to depends very much on the goal of your reengineering project and the kind of organization surrounding it, hence this list is provided as a starting point only.

* An end-user should tell you how the system looks like from the outside and explain some detailed usage scenarios based on the daily working practices. Ask about the working habits before the software system was introduced to assess the scope of the software system within the business processes.

* A manager should inform you how the system fits within the rest of the business domain. Ask about the business processes around the system to check for unspoken motives concerning your reengineering project. This is important as reengineering is rarely a goal in itself, it is just a means to achieve another goal.

* A person from the sales department ought to compare your software system with competing systems. Ask for a demo of the functionality most requested by the users (this is not necessarily the same as most appreciated!) and ask how this has evolved in the past and how it might evolve in the future. Use the opportunity to get insight into the various types of end-users that exist and the way the software system is likely to evolve.

* A person from the help desk should demonstrate you which features cause most of the problems. During this part of the demo, ask how they explain it to their users, because this may reveal mismatches between the actual business practices and the way it is modeled by the software system. Try to get them to divulge bizarre anecdotes to get a feeling for the folklore around the software system.

* A system administrator should show you all that is happening behind the scenes of the software system (ie startup and shutdown, back-up procedures, data archival, ..). Ask for past horror stories to assess the reliability of the system.

* A maintainer/developer may demonstrate you some of the subsystems. Ask how this subsystem communicates with the other subsystems and why (and who!) it was designed that way. Use the opportunity to get insight in the architecture of the system and the trade-offs that influenced the design.

### Variants

Demonstrate to yourself. A scaled-down variant of InterviewDuringDemo consists of the reverse engineer who demonstrates the system to him- or herself via a trial-and-error process. Such a demonstration obviously lacks the group dynamics that boosts the demonstration, but on the other hand may serve as a preparation technique for a discussion with the designers/maintainers.

## Tradeoffs

### Pros

* Focuses on valued features.
The fact of giving a demo will gently coerce the interviewee to demonstrate those features which are appreciated. As a reverse engineer, that's of course your main interest.

* Provides lots of qualitative data.
Conducting an interview typically results in a wealth of relevant information, which is very hard to extract by other means. 

* Increases your credibility.
Performing an interview, shows to the interviewee that there is a genuine interest in his or her opinions about that system. The interview thus provides a unique opportunity to enlarge the end-users confidence in the result of your reengineering project.
\end{bulletlist

### Cons

* Provides anecdotal evidence only.
The information you obtain is anecdotal at best, just like it is with ChatWithTheMaintainers. Interviewees will almost certainly omit important facts, either because they forgot or either because they deemed it uninteresting. This effect will be countered to some degree by demonstration, yet prepare to complement the information you obtained by other means (see for instance SkimTheDocumentation, ReadAllTheCodeInOneHour and DoAMockInstallation).

* Time may be lacking.
At least one person should be able to do the demonstration. This seems a simple requirement but may be hard to achieve in practice. Some systems (embedded systems for example) just don't have human users and -- given the "time is scarce" principle -- sometimes it will take too long to make an appointment with someone who is willing to demonstrate the system.

### Difficulties

* Requires interviewing experience.
The way the questions are phrased has considerable impact on the outcome of the interview. Unfortunately, not all reverse engineers have the necessary skills to conduct good interviews. When you're unexperienced, rely on flow of the demonstration to trigger the right kind of questions.

* Selecting interviewees may be difficult.
You should avoid to interview enthusiastic supporters or fervent opponents. Unfortunately, in the beginning of a reengineering project you lack the knowledge to make a good selection. Consequently, rely on other persons' opinions to make the selection, but prepare to adjust the results based on the enthusiasm (or lack of it) of the interviewees.

* How to handle real-time software.
For certain kinds of systems (especially real-time systems), it is impossible to answer questions while operating the software system. In such a situation, jot down your questions while seeing the demo, and do the actual interview afterwards.

## Example

Now that you checked the source code and the documentation you're almost convinced that reengineering the XDoctor system will be feasible. However, you still have some doubts about what precisely should be reverse engineered because you don't really know what the users appreciate in the system. Via the sales department, you get in touch with one of the current users and you make an appointment for the next day. You're also worried about the state of the internet protocol (incl. the state-chart specification you discovered in the documentation) and the way it fits in with the rest of the system, so you step to Dave and ask him whether he can give you a demo of the internet protocols.

Dave is quite pleased to show you his work and immediately starts to type on his keyboard. "See, now I launched the server" he says, pointing at a little console window that appeared on the screen. "Wait a second", you reply, "what command did you type there?". "LSVR; you know, for Launch Server". A bit surprised you ask Dave if there is some kind of manual explaining how to start-up and shut-down this server. Dave explains that there isn't, but that it is quite easy to infer from the batch file starting the whole system. He even tells you that there are some command-line options associated with LSVR and that they are all documented in a READ.ME file and via the -h(elp) option. Next, Dave starts a test program (yes, it is invoked via LSVRTST) and in the console window you see that the server is actually receiving traffic, while the test program is spitting out a long log of all the messages sent and received. Of course, you ask him how he knows that the test succeeded and to your dismay he states that this is done by manually inspecting the log. You decide to switch topics and ask him why this subsystem is called a server, because you would guess that it is actually running on the client machine. This question triggers a heated discussion which eventually leads to an architecture diagram like the one depicted in figure 6, showing a remote server (managed by the health insurances and accepting), a local server (the L in LSVR probably stands for "local" and not "launch") and some local clients. From this discussion you kind of understand how the complete system is working. The basic idea is that there are several client computers on various desks connected to a local server via a LAN-network. The local server maintains the database and the internet connections to the health insurances. With the diagram on a little sheet of paper, you ask Dave where this internet protocol originated from. This question again triggers a long story which reminds you that the protocol is designed in Germany (hence the reason why it's documented with state-charts) and now adopted by the national health insurance companies.

The next day, you put on your suit and drive off to have a meeting with doctor Mary Johanssen. While introducing yourself, you get the impression that she is not so pleased. You explain the reason of your visit and during the conversation you understand that the doctor is quite worried about your company taking over the XDoctor software. You do your very best to assure her that the main purpose of the demonstration and interview is precisely to learn how your company may best serve the current users and that they do not intend to stop supporting it. Reassured, she starts the actual demonstration. Not surprisingly, the most appreciated feature is the automatic transaction processing with the health insurances, because "it means that I can save on a secretary to do the paperwork". However, Doctor Johanssen also shows you some other features you were not aware of: built-in e-mail, export to spreadsheet ("I just e-mail this file to my bookkeeper"), payments in multiple currencies ("Real good to deal with Euros"). During the course of the demo she tells you that in the beginning the system was a bit unstable (apparently she served as an beta-tester) and that there are some weird mistakes (the list of patients is sorted by first name instead of family name) but all in all she is very pleased with the system.

Once you are back in your office you write a small report, which includes the sequence of commands for testing the local server plus the usage scenario's for the automatic transaction processing and the payment with multiple currencies. Your report also includes the architecture diagram (figure 6) and the following observations.

* Testing of internet protocols is manually: investigate regression tests.
* Internet protocol spec comes from a consortium of German health insurances.
* Sorting of patient list: by first name instead of last name.

## Rationale

"The ability to respond flexibly to the interviewee's responses is one of the reasons why interviews are so widely used"
Simon Bennett
 
"Interviews are well suited to exploratory studies where one does not know yet what one is looking for, since the interviewer can adjust the interview to the situation."   Jakob Nielsen

Interviewing people working with a software system is essential to get a handle on the important functionality and the typical usage scenario's. However, asking predefined questions does not work, because in the initial phases of reengineering you do not know what to ask. Merely asking what people like about a system will result in vague or meaningless answers. On top of that, you risk getting a very negative picture because users have a tendency to complain about a legacy system. 

"The real challenge of analysis begins when the expert must communicate the concept to someone else --- to an analyst. Since the concept is often very rich and expansive, it is generally not possible for experts adequately to communicate their entire understanding in a single, holistic expression."  Adele Goldberg 

Compared to a forward engineering situation, a reverse engineer has one major advantage: there is a working software system available and you can exploit its presence. In such a situation it is safe to hand over the initiative to the user by requesting a demo. First of all, a demo allows users to tell the story in their own words, yet is comprehensible because the demo imposes some kind of tangible structure. Second, because users must start from a working system, they will adopt a more positive attitude explaining what works. Finally, during the course of the demo, the interviewer can ask lots of precise questions, getting lots of precise answers, this way digging out the expert knowledge about the system's usage.

## Known Uses

The main idea of this pattern --- let the user explain the system while using it --- is commonly used for evaluating user-interfaces. "Thinking aloud may be the single most valuable usability engineering method. Basically, a thinking-aloud test involves having a test subject use the system while continuously thinking out loud."  The same idea is also often applied during rapid prototyping for requirements elicitation.

One anecdote from the very beginning of the FAMOOS project --- an application of the Demonstrate to yourself variant of this pattern --- shows how ignorant questions arising from seeing a software system in action may trigger dormant expertise within the maintenance team. For one of the case studies --- a typical example of a 3-tiered system with a database layer, domain objects layer and user-interface layer --- we were asked `to get the business objects out'. Two separate individuals were set to that task, one took a source code browser and a CASE tool and extracted some class diagrams that represented those business objects. The other installed the system on his local PC and spent about an hour playing around with the user interface (that is, he demonstrated the system to himself) to come up with a list of ten questions about some strange observations he made. Afterwards, a meeting was organized with the chief analyst-designer of the system and the two individuals that tried to reverse engineer the system. When the analyst-designer was confronted with the class-diagrams he confirmed that these were indeed the business objects, but he couldn't tell us whether there was something missing, nor did he tell us anything about the rationale behind his design. It was only when we asked him the ten questions that he launched off into a very enthusiastic and very detailed explanation of the problems he was facing during the design --- he even pointed to our class diagrams during his story! After having listened to the analyst-designer, the first reaction of the person that extracted the class diagrams from the source code was `Gee, I never read that in the source code'.

## Related Patterns

A lot of good advice concerning how to interact with end users is embodied in the "Customer Interaction Patterns". The main message of these patterns is that "It's a Relationship, Not a Sale", emphasizing that your contacts with the end users should aim to develop a relationship of trust.

## What Next

For optimum results, you should carry out several attempts of InterviewDuringDemo with different kinds of people. Depending on your taste, you may perform these attempts before, after or interwoven with ReadAllTheCodeInOneHour and SkimTheDocumentation. Afterwards, consider to ChatWithTheMaintainers to verify some of your findings. 

At the end of your first contact with the system, you should decide on how to proceed with (or cancel) the project. By seeing the demonstrations, you get a feeling for how the people use the system and which features are appreciated. As such you know the valuable parts of the software system and these are probably the ones that must be reverse engineered. The usage scenarios will also serve as an input for patterns like SpeculateAboutDesign and RecordBusinessRulesAsTests.
