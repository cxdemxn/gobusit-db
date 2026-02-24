# GoBusIt Database

This repository contains the database schema, ER diagrams, and migration scripts for the GoBusIt platform.

It defines the transport data model used by the backend services.

---

## 📦 Contents

### Schema Design
- Entity relationship diagrams (https://mermaid.ai/d/4f17c618-2f2d-441f-9abb-76cc622e2bf4)
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
/schema
├── schema.md
/docs
├── erd.mmd
/migrations
├── v1__init.sql
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
