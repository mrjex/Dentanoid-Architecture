# Architectural decision record 22th November 2023 15:30

The current architecture (22th November 2023) does not provide a way of knowing physical location/clinics. A Clinic can contain 0 or more dentists, but does not have to. Due to this, a Clinic service will be implemented and the area of responsibility is:

* Handle CRUD operation for clinics
* Handle relations between clinics and dentists

## Changes that shall be implemented in new component diagram

Include dentist service in the same structure as [V2](https://git.chalmers.se/courses/dit355/2023/student-teams/dit356-2023-20/group-20-distributed-systems/-/wikis/Appendix#updated-component-diagram-v2-10-11-2023:\~:text=Updated%20Component%20Diagram%20V2%20(10%2D11%2D2023)).

# New component diagram

### Component diagram

![DIT356 - Mockup (1).png](uploads/cd6520e7c116fb822b7ada0c520c9f2d/DIT356_-_Mockup__1_.png)

# Members that agree to the change in architecture

* Lucas Carlsson Holter
* Jonatan Boman
* Cornelia Olofsson Larsson
* Mohamad Khalil
* James Klouda
* Joel Mattsson