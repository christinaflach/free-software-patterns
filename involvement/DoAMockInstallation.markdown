# Do a Mock Installation

**Intent:** Check whether you have the necessary artefacts available by installing the system and recompiling the code.

## Problem

How can you be sure that you will be able to (re)build the system?

This problem is difficult because:

* The system is new for you, so you do not know which files you need to build the system.
* The system may depend on libraries, framework, patches and you're uncertain whether you have the right versions available.
* The system is large and complex and the exact configuration under which the system is supposed to run is unclear.
* The maintainers may answer these questions, or you may find the answers in the manual, but you still must verify whether this answer is complete.

Yet, solving this problem is feasible because:

* You have access to the source code and the necessary build tools (ie the makefiles, compilers, linkers).
* You have the ability to re-install the system in an environment that is similar to that of the running system (ie the installation CD and a computer with the right operating system).
* Maybe the system includes some kind of self test (see TestsYourLifeInsurance), which you can use to verify whether the build or install succeeded.

## Solution

Try to install and build the system in a clean environment during a limited amount of time (at most one day). Run the self test if the system includes one. 

### Hints

The main idea is to verify whether you are able to replicate the install and build processes, not to understand them completely.

Log all small failures you encounter during the build and installation process and the way you solved them, because this will tell you about the configuration of the system and its dependencies on libraries, frameworks and patches. For example you may learn that the system cannot be compiled on a certain location, needs an old legacy library only accessible from a particular machine, or needs a particular patch of the libraries.

It is possible that at the end of the day you did not succeed to build or install the system completely. This corresponds to a high probability/high impact risk for your reengineering project and therefore, before you continue, you must plan to study the build and install procedures and adapt them where necessary.

After this build and install experiment, prepare a report containing:

* version numbers of libraries, frameworks and patches used;
* dependencies between the infrastructure (database, network toolkits, ports;
* problems you encountered and how you tried to solve them;
* suggestions for improvement;
* (in case of incomplete installation or build) your assessment of the situation, including possibilities for solutions and workarounds.

## Tradeoffs

### Pros

* Essential prerequisite.
The ability to (re)build or (re)install the system is essential for a reengineering project, therefore you must assess this issue early on. If building or installing proves to be difficult or impossible, plan the necessary corrective actions.
* Demands precision.Replicating the build and installation process forces you to be precise about the components required. Especially for migration projects this information is crucial because all the components must be available on the target platform as well.
* Increase your credibility.
After the build or install you will have first-hand experience with the steps that prove to be difficult. It should be easy to offer some concrete suggestions for improvement, which will undoubtedly increase your credibility with the maintenance team.


### Cons

* Tedious activity. You will feel very unproductive while you are busy tracking down the causes behind your failures to install the system, especially since most of the problems depend on trivial details that do not interest you now. You can counter this effect to some extent by limiting the amount of time you devote to DoAMockInstallation, but then you will feel even more unproductive because you will not have succeeded in building or installing the system.
* No certainty.Although this pattern demands precision, there is no guarantee that you will actually succeed to build the system after you have reengineered some of its components. Especially when a reliable self-test is missing you cannot verify whether your build or install was complete.

### Difficulties

* Easy to get carried away. Building or installing a complex system may easily fail due to external factors (missing components, unclear installation scripts). It is tempting to continue fixing these annoying problems due to the "next time it will work" effect. Rather than getting carried away with these details, it is important not to lose sight of the main goal, which is not to build the system, but to gain insight into the build process. Consequently you should limit the time you spend, and focus on documenting the problems that arise so you can address them later.


## Example

You have carried out an InterviewDuringDemo with some end users, and consequently have a feeling for the important features that should be preserved during your reengineering project. However, before accepting the project you still must verify whether you will be able to change the system. Hence, you decide to do a quick experiment to see whether you carry out a clean build of the system.

From the box that Dave has left in your office, you take the second CD containing all the source code. Browsing the directories you notice one top-level makefile and you decide to give it a try. You copy all the files to the Linux partition of your system and type the command make all at the prompt. Everything goes smoothly for a while and the system reports numerous successful java compilations. Unfortunately, after a few minutes the make fails due to a missing library java.sql. You realize that you still have a JDK1.1 installed, while you remember that the documentation mentioned that it should have been JDK1.3. Reluctantly, you trash the whole directory structure, uninstall JDK1.1, download and install a JDK1.3 (downloading takes forever so you fetch yourself a cup of real coffee), and then start again. This time the make proceeds smoothly until the compiling of the C-code starts. The first compilation immediately fails due to a missing library file and you open the C-file to see what exactly is causing this failure. Apparently something must be wrong with the search paths, because assert.h is a standard library you know is available in your system. By then it is almost lunch-time and since you planned to finish this build experiment today, you decide to leave the whole C-compilation for later. Dave is here anyway, and since he wrote this C-code he will surely be able to show you how to compile it.

After lunch, you want to verify whether what you built is OK. A grep of {"void main("} reveals that XDoctor.java file contains the main entry so you type java XDoctor to launch the system. And indeed, the start-up screen you recognize from the demonstration appears and a little status window appears telling that the "the system is connecting to the database". Immediately thereafter, the system fails with a "something unexpected happens" message and you suspect this is due to the missing database. You decide to investigate this issue later and turn your attention to the installation procedure.

You put the installation-CD in the CD-drive of your Macintosh to see whether you are able to install the system. Automatically, the typical installation window appears and you proceed through the installation process smoothly. After the installation process completes, the installer asks you to reboot your computer before launching the system. You make a note to verify which system extensions are installed, reboot your computer and then double-click the XDoctor icon which appeared on your desktop. Unfortunately, a window appears which asks you to provide a license key. Studying the CD-box you read that you must have received the license key in a separate letter which of course you did not receive. ``Too bad'', you think "it would have been nice to run a demo-version of the system when no license key is provided, just as we do with our proDoc". Frustrated you decide to give up and write the following report.

* make with a JDK1.3 appears to work; could not verify whether this build was complete.
* C-compilation fails: request Dave to demonstrate the build
* Investigate licensing in further detail: how is the system protected?
* Suggestion: if no license key is provided, run in demo-mode (cf. proDoc).
* Suggestion: verify pre-conditions when calling XDoctor.main(); system exits with ``something unexpectedly happens'' after a fresh build.

## Known Uses

In one of the FAMOOS case studies, we had to reengineer a distributed system that was communicating over sockets with a central server by means of a little command language. We received a tape containing a tar-file which -- according to the letter attached -- "contains everything that is required". Rebuilding and reinstalling the system proved to be difficult, however, and we had to dive into the installation scripts and ask the maintainers for clarification. In the end, we could not communicate with the central server due to security and connection problems, but we were able to test the system in simulation mode. Although the experiment did not succeed completely, it gave us insights into the system's architecture. In particular, the way the simulation mode mimicked the central server and the way this was encoded in the source code and the makefiles provided us with information that turned out to be crucial during the rest of the project.

Towards the end of the first day of an auditing project we carried out, we requested to see a clean install the following morning. We considered this to be an innocent request meant to prepare things for an InterviewDuringDemo, but during the installation we discovered that one maintainer had to stay overnight to prepare the installation CD. From the subsequent discussion we learned that the system wasn't meant to be installed: the user base was fixed and the system was designed to download weekly updates over the internet. This explained many peculiarities we observed during a previous effort to ReadAllTheCodeInOneHour and helped us a lot to expose the design issues during the remainder of the auditing project.

When working with a configuration management system, it is a good idea to first try to import the code into a clean configuration before recompiling it. In case of a Smalltalk system for instance, one general piece of advice is to first try to load the Envy configuration maps that compose the system and then load the code into a clean image. 

## What Next

It can be a good idea to ChatWithTheMaintainers before you report your conclusions. They may be able to confirm your findings and clear up some misconceptions. Concrete suggestions for improvement are best discussed with the maintainers, because it is the best way to convince them that you really mean to help them.

When the build or installation fails completely, you may want to combine InterviewDuringDemo with DoAMockInstallation. In that case, invite a maintainer to demonstrate the build or installation process and ask questions about those steps you have found unclear.
