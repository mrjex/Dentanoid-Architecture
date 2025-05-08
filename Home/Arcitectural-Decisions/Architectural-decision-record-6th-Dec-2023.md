# Architectural decision record 6th December 2023 10:30

On the 6th of December 2023 at 10:30 AM, a decision was reached to refine and document the current architecture due to identified time constraints and redundancy issues among services. This decision necessitates changes to the architecture, impacting the logging and statistics serivce, which will get merged and session service, which will be removed.

## Changes that shall be implemented in new component diagram

* Merging of Logging Service and Statistics Service into a unified Monitoring Service.
* Removal of the Session Service.

# New component diagram

* **Monitoring Service:**
  * Responsible for handling all logs and monitoring the activity of the entire system.
* **Session Storage:**
  * Removed, as it no longer aligns with the revised functionality of other services.

### Component diagram

![image.png](uploads/8ea0a0973ecf49d56b9cfb5d94df9996/image.png)

# Members that agree to the change in architecture

* Lucas Carlsson Holter
* Jonatan Boman
* Cornelia Olofsson Larsson
* Mohamad Khalil
* James Klouda
* Joel Mattsson **- not participating in meeting, will review (annotated 6th Dec 2023 11:00)**