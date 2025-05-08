# Sprint 2 15/11 2023 13:30

**Sprint planning will be delayed from 14/11 to 15/11 due to concerns specified in **[**sprint 1**](https://git.chalmers.se/courses/dit355/2023/student-teams/dit356-2023-20/group-20-distributed-systems/-/wikis/Home/Sprints/Sprint-1/#discussion)**. Change in architecture was performed before the planning of sprint 2, check the **[**Architectural decisions 15/11**](https://git.chalmers.se/courses/dit355/2023/student-teams/dit356-2023-20/group-20-distributed-systems/-/wikis/Home/Arcitectural-Decisions/Arcitectural-decision-record-15th-Nov-2023)** for detailed information.**

## Sprint planning

### Tasks from sprint 1

* Sequence diagram will be approved and put in the wiki
* Dentis UI needs to be merged
* Map needs to be bugfixed and merged
* Authentication needs to be put in a issue and merged
* Patient client skeleton needs to be merged

### Tasks

- Patient API (adhere to REST) **James and Jonathan**
  * Research - document aswell
  * Set up repo
  * Set up database
  * Create endpoint for different entities (split in to different issues)
  * integrate MQTT
- User service ([issues](https://git.chalmers.se/courses/dit355/2023/student-teams/dit356-2023-20/group-20-distributed-systems-authentication-service/-/issues/?sort=updated_desc&state=opened&label_name%5B%5D=Sprint%202&first_page_size=20)) **Mohamad and Lucas**
  * Research - document aswell
  * Create CRUD operations for patients
  * Create CRUD operations for dentists
- Appointment service ([issues](https://git.chalmers.se/courses/dit355/2023/student-teams/dit356-2023-20/group-20-distributed-systems-appointment-service/-/issues/?sort=created_date&state=opened&label_name%5B%5D=Sprint%202&first_page_size=20)) and **Cornelia and Joel**
  * Research - document aswell
  * Set up repo
  * Create issues
- MQTT broker
  * Research

## Sprint review 22th November 13:30

- **James & Jonatan**
  * There is still some features that needs to be implemented, but as of right now the basics with appointments are pushed to the repo. The stratigy for building the endpoints are created, so the foundation for the rest of the patient API is built. There is still some syncing with other services teams that needs to be done to make it all work together.  
- **Cornelia & Joel**
  * Foundation is built, however responding to GET requests are not implemented. Uniqueness check need to be thought over, and overall data handeling/validation.
- **Mohamad & Lucas**
  * CRUD operations are implemented and passwords are hashed. Concurrency have not been looked at yet.

### Discussion

* How will uniquenes look like with appointments?
  * Dentist should not be able to post overlapping time slots
  * Patients can book several time slots that overlapping
* Adding a clinic Service next sprints

## Sprint retrospective 22th November 14:30

- **What Went Well?**
  * Getting started feels good, due to achitecture is easy to delegate area of responsibility. Nice to be "scrums of scrums". We did not have to many meetings. 
- **What Can We Improve?**
  * Having the sprint over the weekends are not nice. We need to define when/how to summon for in person meetings. The issue state labels for the commit messages are hard to understand. 
- **How Should We Improve Until Next Sprint?**
  * Add some definition of when we are expected or not to work. Improve issue status commit labels to have a shared understanding of them. 