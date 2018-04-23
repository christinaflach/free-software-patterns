
# Document Your Changes

**Intent:** The project's documentation must be maitained up to date.

## Problem

Developers usually change code, correcting bugs, adding new functionalities but not do any 
modification in documentation, this turn it outdated. However the documentation is usefull, only it's up to date. Then, 
how to keep the documentation up to date?

## Solution

Before you submit your change, write the documentation related to it. 
Core developers should require this from the contributors.


## Trade Offs

**Pros:** 
* It's easier for users and developers to understand the project, if there is a good documentation. 
* It's easier and faster for the own developer documents his changes.
* If everybody document their changes, it isn't necessary to have a group of developers dedicated to do this task.

**Cons:**
*Usually developers doesn't like to document your changes, they think they are wasting their time.  
*It's necessary to use the same technology just used to do the documentation, sometimes it's represent another matter to study and tools to install.


## Rationale

A good documentation is important to any software. In open source software project, it's a question of survival,
because it helps to attract and maintain new users and contributors. Though, a good documentation represents a 
complete, sufficiente and up to date documentation.

This pattern is relevant for any kind of contribution that you decide to do. 
Depending what you do, you have more or less things to document. 
If you contribute with bug correction or coding tests a few comments may be sufficient, 
but if you build a new functionality a whole documentation must be done. 

## Example


## Known Uses



## Related Patterns

When you are documenting your changes, intrinsically you [Review Your Changes](link://contribution/ReviewYourChanges). 
If you are documenting bug corrections or tests coded, the comments could be the same of  
[Explanatory Commit Messages](link://contribution/ExplanatoryCommitMessages). In the case of your contribution be a new functionality,
remember to see [Write Documentation](link://contribution/WriteDocumentation).

## What Next

After [Add Tests that Fail](link://contribution/Add Tests that Fail), [Document Your Changes](link://contribution/DocumentYourChanges) and 
[Review Your Changes](link://contribution/ReviewYourChanges), 
you are ready to [Create a Patch](link://contribution/CreateaPatch).

