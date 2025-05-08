# Contribution guidelines / Development process

This document fulfills the purpose of outlining the steps in the team's work process, contributors are expected to adhere to this document when working on the system.

## Table of contents

- [Contribution guidelines / Development process](#contribution-guidelines--development-process)
  - [Issues](#issues)
  - [Issue template(WIP)](#issue-templatewip)
  - [Labels](#labels)
  - [Commit messages](#commit-messages)
  - [Traceability](#traceability)
  - [Feature branching](#feature-branching)
  - [Merge requests <span dir="">&</span> code reviews](#merge-requests--code-reviews)
  - [Meetings](#meetings)
  - [Sprints](#sprints)
  - [Milestones](#milestones)
  - [Kanban](#kanban)

## Issues

All contributions to the project shall be tied to an issue, meaning in practice that issues specifying proposed changes and related requirements are to be created before any work on implementing these changes can be made. The purpose of this is to maintain a high degree of traceability.

### Issue template(WIP)

All issues should contain at least the following items:

* Background on issue (if applicable)
* Description of issue
* Related issues and requirements
* Acceptance criteria
* Appropriate tags/labels

## Labels

Each issue has a label tied to it to display its current state in the development process, the current label shall also be mentioned as the state of the issue in the commit message ![Labels-Distributed-Systems](uploads/d5185ee1ea6d99a74b3de6e1df0c306c/Labels-Distributed-Systems.png)

## Commit messages

Commit messages should be written in imperative style and include the issue number.

Example: `#n (state of issue) Fix bug on homepage`

States: Ongoing, Completed, Tested, Blocked

If more than one group member worked on the commit they should be mentioned as co-authors.

If a commit has a complex solution the author is encouraged to add a description which explains and reasons for the code.

## Traceability

To ensure traceability from commit to issue to requirement/user story all actions in the repo shall follow:

- The commit shall follow the [commit message guidline](#commit-messages)
- The issue shall mention and link to the requirements/user stories which it relates to
- The requirement/user story shall link to the issue that it relates to

![Traceability-Distirbuted-Systems](uploads/6f7aa65b0d5ff743fbe131c37ea7637d/Traceability-Distirbuted-Systems.png)

## Feature branching

A new branch should be created when working on new contributions. Any changes related to a certain issue must first be made in the created branch, and when the assigned contributor is satisfied with the progress a merge request shall be created. The merge request should contain a brief description on changes made and potential clarifications when needed.

## Merge requests & code reviews

All merge requests shall be subject to a code review from a team member which did not work on the issue/branch in question. The main purpose of the code review is to make sure that the proposed changes satisfy the defined acceptance criteria, is inline with the style of the existing codebase and is implemented in a coherent and sensible way. Potential areas of improvement and suggestions should be discussed in the merge request on gitlab by starting a thread. All threads should be marked as resolved before the request can be approved.

## Meetings

Meetings that are outside of the sprint planning, review and retrospective have to be summoned at least one work day in advance. Time and place have to be set at latest 18:00 the work day before. The time can not clash with planned lectures, all meetings during lecture time have to be agreed upon by each and every member. No mandatory or signifincalty important meetings are to be summoned during the weekends. 

## Sprints

Work on the system is to be divided into sprints, where each sprint shall be **one** week starting on mondays and ending on sundays. At the end of each week a sprint review and sprint retrospective shall be held where all team members shall be present.

The sprint review entails evaluating the work done in the corresponding sprint as well as potential improvements to the product.

The sprint retrospective entails evaluating the effectiveness of the development process and discussing potential improvements to the development process that can be made in upcoming sprints.

**The review and retorospective, as well as the sprint planning will be held each tuesday at 15:15 in person at Lindholmen**

In the picture below, the incremental deliveries (sprints or weeks) are depicted in relative to the milestones of the project ![SprintPlanning](uploads/f293e344a117fdbbfebb68fd430794dd/SprintPlanning.png)

## Milestones

Milestones are targets consisting of a set of requirements and have a deadline for when the requirements should be completed. Each milestone has its own set of requirements and it is the team's target to complete them all before the deadline. If there are uncompleted requirements at the end of a milestone they will either become highly prioritized during the upcoming sprint or deprecated and moved out of scope.

## Kanban

The kanban board will be set up to track the state of issues based on tags. Team members can easily check the kanban board to get an oversight of what the entire team is working on, what the team is going to be working on and what has been completed.

## Merge Conflicts

The author of a branch will solve merge conflicts.


## Testing (WIP)

Every non-frontend artifact contributed to the project must be tested.