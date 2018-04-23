# Write Documentation

**Intent:** Contribute to a free software project by writing useful
documentation.

## Problem

How to identify which documentation would be useful for the project? How to
write such documentation?

This problem is difficult because:

* The only documentation that is always up to date is the code itself, but it
  is not easily understandable for all stakeholders.
* Documentation that is external to the code, however, can become quickly
  outdated as the code evolves. This even includes documentation in the form of
  source code comments!
* There are different stakeholders who can benefit from the documentation
  (users, developers, ...). Each type of stakeholder will need different types
  of information, in different levels of abstraction. 

Yet, solving it is feasible because:

* Some aspects of the system do not change frequently, and accordingly their
  documentation tends to stay up to date.
* For those parts of the code that do change often, there are ways to create
  documentation automatically from the source code.
* User documentation does not depend on implementation details.

## Solution

Useful documentation includes, in general, ...

* Check whether the project suggests specific contributions
* Identify missing documentation
* Identify outdated documentation and update it.


source (project, contrib), activity (update, create), 

### Hints

* Checklist - geral de ES
* Doc that I may find useful, or missed, or ...
* Identify bugs marked as WONTFIX
* Identify documentation-related bugs
* Check whether any of the FIXME comments mention any documentation-related
  need.
* Review your notes from when you were familiarizing with the project and check whether you could turn them into documentation that would be useful for future contributors.
* Follow tutorial-style documentation performing the documented steps and try
to reproduce the results that you are supposed to obtain. If you can't, the
tutorial probably needs to be updated. 
* Coding conventions
* Tutorial for new contributors
* Frequently Asked Questions
* Check whether there is a recommended template for the type of documentation
  you choose. If there is no explicit template, check other documentation of
  the same type and try to identify a pattern in the content.
* 

## Trade Offs

**Pros:** 
* It's easier for stakeholders to understand the project, if there is a good documentation. 
* Compared to other kinds of contributions, it isn't a difficult task. 

**Cons:**
* For an efficient contribution, it's necessary a deep understanding of the project's section.
* Sometimes it's difficult to know if the documentation is outdated or not.
* It's necessary to use the same technology just used to do the documentation, sometimes it's represent another matter to study and tools to install.

## Rationale

The only documentation that is always up to date is the code itself, 
but it is not easily understandable for all stakeholders. However, when 
stakeholders handle with outdated documentation, the project loses reliability. 
Therefore, it's important to find out which documentation must be write and how it must be up date.

## Example


## Known Uses



## Related Patterns

To make a significant contribution, it's necessary to [Look for TODO Lists]
(link://involvement/LookForTodoLists), [Review Recent Activity]
(link://contribution/ReviewRecentActivity) and prioritizes the next tasks. 
To avoid duplicating effort, working in wrong version, before start, remember to get the 
[Right Version for the Task] (link://contribution/RightVersionfortheTask).

## What Next

Even with documentation contribution, it is important to [Review Your Changes] 
((link://contribution/ReviewYourChanges) before submitting them. After all, you can't 
forget to do a [Explanatory Commit Messages] ((link://contribution/ExplanatoryCommitMessages).
