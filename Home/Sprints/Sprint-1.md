# Sprint 1 9/11 2023 13:30
This initial sprint contains decisions regarding technology stack, check ["Technology stack"](https://git.chalmers.se/courses/dit355/2023/student-teams/dit356-2023-20/group-20-distributed-systems/-/wikis/Home/Technology-stack) document to view detailed information.
## Sprint planning 
### Tasks
- Figma sketch of the UI
  - James
- Add MQTT diagram
  - Cornelia
- Create sequence diagram for the system
  - Jonatan
- Set up database cluster in Atlas
   - Lucas
- Set up repositories and add subgroup to display all issues in all repos
  - Lucas
- Set up bootstrap vue for the dentis UI and Create a simple dentist UI
  - Cornelia
- Create patient UI structure with pages
  - James
- Add authentication
  - Mohamad
- Integrate external map service
  - Joel 

## Sprint review
- **James**
  - Figma sketch is available in the wiki, patient UI structure with pages is nearly complete (pending review in Sprint 2).

- **Cornelia**
  - MQTT diagram is in progress; suggestions are outlined. Dentist UI is developed but not yet merged; merging is planned for Sprint 2.

- **Jonatan**
  - Sequence diagram with four different use cases completed. Further use cases may be discussed in the future.

- **Lucas**
  - Repositories created; no need for sub-folders as we are group owners. The cluster is established with no reported issues.

- **Mohamad**
  - Authentication is functional; the server is up, and new users can be created and verified. An issue needs creation and MR assignment. The pipeline is created but not fully modified.

- **Joel**
  - Map integrated but has some bugs.

### Discussion
#### Concerns regarding the architecture
Jonatan expresses concerns about the flow and components, emphasizing the need for a structured discussion on the system's appearance. Key questions include the design of the API gateway, MQTT communication, potential architectural changes, and the number of distributed components. These concerns will be brought up at tomorrow's TA meeting and a subsequent discussion at 11.

Microservices pose complexities, and service-oriented issues exist. The number of services per database could prove challenging. These concerns will be addressed during the upcoming TA meeting and afterwards at 11 o'clock.

#### Patient UI
* Map structure is unclear, needs to get an overview

## Sprint retrospective
- **What Went Well?**
  - The group was engaged with no unnecessary delays. Workflow planning was effective once initiated. Inter-team communication was successful, and everyone comprehended their tasks.

- **What Can We Improve?**
  - Shared understanding of the architecture and MVP, which is not yet documented. Effort estimation lacks consensus due to group discussions. Creating more non-critical issues could enhance productivity. The [development process](https://git.chalmers.se/courses/dit355/2023/student-teams/dit356-2023-20/group-20-distributed-systems/-/wikis/Home/Development-process) has not been fully adhered to, particularly in linking issues to requirements/user stories. Test procedures have not been discussed.

- **How Should We Improve Until Next Sprint?**
  - The development process document should include additional information on how to handle issues/MR. Further clarification is needed on handling branches/issues/MR. A procedure for tests should be established.