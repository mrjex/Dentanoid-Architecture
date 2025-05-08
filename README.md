# Dentanoid – Distributed Dental Appointment System

> **For detailed documentation and the development process, visit the [Architecture Wiki](https://github.com/Dentanoid/Architecture/wiki).**

---

## Table of Contents
- [Dentanoid – Distributed Dental Appointment System](#dentanoid--distributed-dental-appointment-system)
  - [Table of Contents](#table-of-contents)
  - [System Overview](#system-overview)
  - [Components](#components)
    - [Frontend Clients](#frontend-clients)
    - [REST APIs](#rest-apis)
    - [Backend Services](#backend-services)
    - [Scaled Deployment](#scaled-deployment)
  - [Communication Patterns](#communication-patterns)
  - [System Architecture](#system-architecture)
  - [Key Diagrams](#key-diagrams)
  - [Commercial Video](#commercial-video)

---

## System Overview
Dentanoid is a distributed platform for booking and managing dental appointments, designed for patients, dentists, and clinics. The system leverages a microservices architecture to provide high availability, scalability, and real-time features. It supports:
- **Appointment booking and management**
- **Clinic and dentist discovery (by location, proximity, etc.)**
- **User authentication and management**
- **Email notifications for bookings and cancellations**
- **System monitoring and health checks**

The platform uses both REST and MQTT protocols to balance synchronous and asynchronous communication, ensuring a responsive and robust user experience.

---

## Components

### Frontend Clients
- **[Patient Client](https://github.com/Dentanoid/Patient-Client):**
  - Modern web app for patients to search, book, and manage dental appointments.
  - Features interactive maps, notifications, and a personal dashboard.
- **[Dentist Client](https://github.com/Dentanoid/Dentist-Client):**
  - Web app for dentists to manage their schedules, available times, and appointments.

### REST APIs
- **[Patient API](https://github.com/Dentanoid/Patient-API):**
  - Serves as the main gateway for patient operations.
  - Aggregates data from backend services and handles authentication.
  - Bridges RESTful requests from the frontend to MQTT-based backend services.
- **[Dentist API](https://github.com/Dentanoid/Dentist-API):**
  - Similar to Patient API, but tailored for dentist operations and data aggregation.

### Backend Services
- **[User Service](https://github.com/Dentanoid/User-Service):**
  - Manages user data (patients, dentists), authentication, and user-related queries.
- **[Appointment Service](https://github.com/Dentanoid/Appointment-Service-Go):**
  - Handles creation, booking, and deletion of appointments and available times.
- **[Clinic Service](https://github.com/Dentanoid/Clinic-Service):**
  - Manages clinic registration, dentist assignments, and advanced queries (e.g., clinics by radius or proximity).
- **[Monitoring Service](https://github.com/Dentanoid/Monitoring-Service):**
  - Provides system health checks, logging, and statistics for observability.
- **[Notification Service](https://github.com/Dentanoid/Notification-Service):**
  - Sends email notifications for bookings, cancellations, and new timeslots. Supports subscription to notifications.

### Scaled Deployment
- **[Scaled Deployment](https://github.com/Dentanoid/Scaled-Deployment):**
  - Uses Docker Swarm for high availability and load balancing.
  - Ensures the system can scale horizontally and remain resilient under load.

---

## Communication Patterns
- **REST:**
  - Used between frontend clients and APIs for synchronous, request-response operations (e.g., login, booking, data fetch).
- **MQTT:**
  - Used for efficient, asynchronous, event-driven communication between APIs and backend services.
  - Enables decoupled microservices, real-time updates, and scalable event handling.
  - Example: When a patient books an appointment, the API publishes an MQTT message; backend services process it and respond via MQTT.

---

## System Architecture

![Component Diagram](assets/architecture-stylish.PNG)

---

## Key Diagrams
- **ER Diagram**
  
  ![ER Diagram](assets/ER%20Diagram.png)

- **Context Diagram**
  
  ![Context Diagram](assets/Context%20Diagram.png)

- **Site Map**
  
  ![Site Map](assets/Sitemap.png)
  
- **Use Case Diagram**
  
  ![Use Case Diagram](assets/Use%20Case%20Diagram.png)

---

## Commercial Video
[![Watch the video](https://img.youtube.com/vi/aSLGyp8Asb0/hqdefault.jpg)](https://www.youtube.com/watch?v=aSLGyp8Asb0)

