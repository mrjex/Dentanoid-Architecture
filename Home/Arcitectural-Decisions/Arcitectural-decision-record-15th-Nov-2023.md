# Architectural decision record 15th November 2023 15:00

On the 15th of November 2023 at 3:00 PM, it was decided that the current architecture requires further refinement and documentation. Due to a lack of shared understanding, a redesign is necessary to establish a stronger foundation for the development team. The [previous iterations of the architecture](https://git.chalmers.se/courses/dit355/2023/student-teams/dit356-2023-20/group-20-distributed-systems/-/wikis/cad1a99d-9ea8-4a72-a10a-ff9977a2dcf0?random_title=true#:\~:text=Edit%20sidebar-,Appendix,-Code%20artifact%20step), depicted in a component diagram, did not provide enough detail for feature implementation and exhibited ambiguity. Therefore, the new component diagram aims to be more comprehensive, with clear communication channels, enhanced decoupling, separate APIs for concern separation, and the introduction of session management.

## Changes that shall be implemented in new component diagram

1. **More Comprehensive Diagram:**
   * Aiming for a more exhaustive diagram to leave minimal room for interpretation.
2. **Clear Communication Channels:**
   * Displaying communication channels in a transparent manner, particularly to streamline future work with MQTT.
3. **Enhanced Decoupling:**
   * Introducing additional services to further enhance decoupling.
4. **Separate APIs for Concern Separation:**
   * Inclusion of separate APIs to boost the separation of concerns.
5. **Introduction of Session service:**
   * Incorporating a session management element for improved functionality.

# New component diagram

The revamped diagram introduces four new services - User, Appointment, Session and Notification services - and provides more extensive information on communication channels and service-specific details.

### Component diagram

![DIT356 - Mockup.png](uploads/197359e885f2745f674af66e1129d7f1/DIT356_-_Mockup.png)

# Members that agree to the change in architecture

* Lucas Carlsson Holter
* Jonatan Boman
* Cornelia Olofsson Larsson
* Mohamad Khalil
* James Klouda
* Joel Mattsson