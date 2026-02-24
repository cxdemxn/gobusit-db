# GoBusIt Database

This repository contains the database schema, ER diagrams, and migration scripts for the GoBusIt platform.

It defines the transport data model used by the backend services.

---

## 📦 Contents

### Schema Design
- Entity relationship diagrams
- Table definitions
- Relationship explanations

### Migration Files
- SQL scripts
- Versioned changes
- Seed data for development

### Documentation
- Plain‑English schema explanation
- Field definitions
- Constraints and indexing notes

---

## 📂 Structure

```text
/docs
├── schema.md
├── erd.mmd
/migrations
├── v1__init.sql
├── v2__routes.sql
```

---

## 🎯 Purpose

This repo exists to:

- keep database design independent of backend code
- allow schema evolution tracking
- make architecture easier to understand for contributors
- improve project professionalism

---

## 🔗 Related Repositories

- gobusit-backend → uses this schema at https://github.com/cxdemxn/gobusit-backend
- gobusit-frontend → consumes backend APIs at https://github.com/cxdemxn/gobusit-frontend

---

## 📌 Status

Initial schema finalized. Migration setup next.
