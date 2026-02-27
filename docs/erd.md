# GoBusIt Database ERD

This document shows the structure of the database and how the core entities relate to each other.

View at: https://mermaid.ai/d/4f17c618-2f2d-441f-9abb-76cc622e2bf4

---

## Entity Relationship Diagram

```mermaid
erDiagram

User {
string id PK
string email
string firstName
string lastName
string phoneNumber
datetime createdAt
}

Role {
int id PK
string name
}

UserRole {
string id PK
string userId FK
int roleId FK
}

Bus {
string id PK
string plateNumber
int capacity
busStatus status
}

Route {
string id PK
string originName
string destinationName
float distanceKm
int estimatedDurationMin
}

RoutePoint {
string id PK
string routeId FK
float latitude
float longitude
int sequenceOrder
string stopName
}

Schedule {
string id PK
string routeId FK
string busId FK
datetime departureTime
datetime arrivalTime
float price
scheduleStatus status
}

Ticket {
string id PK
string userId FK
string scheduleId FK
int seatNumber
datetime bookingTime
ticketStatus status
}

User ||--o{ Ticket : books
Schedule ||--o{ Ticket : contains
Bus ||--o{ Schedule : assigned_to
Route ||--o{ Schedule : defines
Route ||--o{ RoutePoint : has_path

User ||--o{ UserRole : has
Role ||--o{ UserRole : assigned_to