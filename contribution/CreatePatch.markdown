# Create a Patch

**Intent:** Produce a file that fully describes your changes to the source code of the project.

## Problem



## Solution

Git patch files are used in order to store differences that need to be applied to a file or a group of files on your system.

## Trade Offs


## Rationale


## Example

To create a Git patch file, you have to use the “git format-patch” command, specify the branch and the target directory where you want your patches to be stored.

> $ git format-patch <branch> <options>

## Known Uses



## Related Patterns



## What Next


