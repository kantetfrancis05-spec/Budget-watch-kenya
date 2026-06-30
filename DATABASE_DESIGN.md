# BudgetWatch Kenya – Database Design

**Version:** 1.0

**Project:** BudgetWatch Kenya

**Purpose:** Define the logical database structure for the BudgetWatch Kenya platform.

---

## 1. Design Principles

The database is designed to be:

- Normalized to reduce duplication.
- Secure by default.
- Scalable.
- Auditable.
- Easy to maintain.
- Optimized for reporting and analytics.

---

## 2. Core Tables

### Users

Stores user accounts.

**Fields:**
- `user_id` (Primary Key)
- `first_name`
- `last_name`
- `email`
- `phone`
- `password_hash`
- `role_id`
- `county_id`
- `constituency`
- `is_verified`
- `created_at`
- `updated_at`
- `last_login`

---

### Roles

Stores system roles.

**Fields:**
- `role_id`
- `role_name`
- `permissions`

**Roles include:**
- Visitor
- Citizen
- Moderator
- Data Analyst
- Administrator

---

### Counties

Stores county information.

**Fields:**
- `county_id`
- `county_name`
- `governor`
- `population`
- `budget`

---

### Institutions

Government institutions.

**Fields:**
- `institution_id`
- `institution_name`
- `institution_type`
- `parent_institution`
- `description`

---

### Ministries

**Fields:**
- `ministry_id`
- `ministry_name`
- `cabinet_secretary`
- `institution_id`

---

### Budgets

**Fields:**
- `budget_id`
- `financial_year`
- `institution_id`
- `county_id`
- `allocated_amount`
- `approved_amount`
- `supplementary_amount`
- `budget_status`
- `published_date`

---

### Expenditure

**Fields:**
- `expenditure_id`
- `budget_id`
- `institution_id`
- `amount_spent`
- `recurrent_amount`
- `development_amount`
- `reporting_period`
- `source_document`

---

### Projects

**Fields:**
- `project_id`
- `project_name`
- `institution_id`
- `county_id`
- `constituency`
- `contractor`
- `project_budget`
- `funding_source`
- `start_date`
- `expected_completion`
- `completion_status`
- `latitude`
- `longitude`

---

### Project Updates

**Fields:**
- `update_id`
- `project_id`
- `progress_percentage`
- `status`
- `description`
- `image_url`
- `update_date`

---

### Public Debt

**Fields:**
- `debt_id`
- `loan_name`
- `lender`
- `loan_type`
- `amount_borrowed`
- `outstanding_balance`
- `interest_rate`
- `loan_purpose`
- `borrowing_date`
- `maturity_date`
- `status`

---

### Debt Payments

**Fields:**
- `payment_id`
- `debt_id`
- `payment_date`
- `principal_paid`
- `interest_paid`
- `remaining_balance`

---

### Procurement

**Fields:**
- `procurement_id`
- `institution_id`
- `tender_number`
- `project_name`
- `supplier`
- `contract_value`
- `award_date`
- `contract_status`

---

### Audit Reports

**Fields:**
- `audit_id`
- `institution_id`
- `financial_year`
- `audit_opinion`
- `findings`
- `recommendations`
- `report_url`

---

### Public Officials

**Fields:**
- `official_id`
- `full_name`
- `office`
- `institution_id`
- `county_id`
- `constituency`
- `term_start`
- `term_end`
- `official_profile`

---

### Official Asset Declarations

**Fields:**
- `declaration_id`
- `official_id`
- `declaration_year`
- `declared_assets`
- `declaration_source`
- `verification_status`

**Note:** Only officially published declarations or legally available records should be stored.

---

### Public Participation

**Fields:**
- `participation_id`
- `title`
- `institution_id`
- `opening_date`
- `closing_date`
- `description`
- `status`

---

### Citizen Submissions

**Fields:**
- `submission_id`
- `participation_id`
- `user_id`
- `submission_text`
- `submission_date`
- `status`

---

### Citizen Reports

**Fields:**
- `report_id`
- `user_id`
- `project_id`
- `institution_id`
- `category`
- `description`
- `image_url`
- `latitude`
- `longitude`
- `report_status`
- `created_at`

---

### Notifications

**Fields:**
- `notification_id`
- `user_id`
- `title`
- `message`
- `notification_type`
- `is_read`
- `created_at`

---

### Performance Metrics

**Fields:**
- `metric_id`
- `institution_id`
- `financial_year`
- `budget_absorption`
- `project_completion_rate`
- `audit_compliance`
- `reporting_timeliness`
- `methodology_version`

---

### Analytics Cache

**Fields:**
- `analytics_id`
- `report_name`
- `generated_date`
- `data_snapshot`
- `expires_at`

---

### System Logs

**Fields:**
- `log_id`
- `user_id`
- `action`
- `entity_name`
- `entity_id`
- `timestamp`
- `ip_address`

---

### Data Sources

**Fields:**
- `source_id`
- `source_name`
- `publishing_organization`
- `publication_date`
- `update_frequency`
- `source_url`
- `verification_status`

---

## 3. Relationships

- One Role → Many Users.
- One County → Many Users.
- One Institution → Many Budgets.
- One Budget → Many Expenditure Records.
- One Institution → Many Projects.
- One Project → Many Updates.
- One Loan → Many Debt Payments.
- One Institution → Many Procurement Records.
- One Institution → Many Audit Reports.
- One Public Participation Exercise → Many Citizen Submissions.
- One User → Many Citizen Reports.
- One Institution → Many Performance Metrics.

---

## 4. Security Considerations

- Passwords stored only as secure hashes.
- Sensitive data encrypted where appropriate.
- Role-Based Access Control (RBAC).
- Audit logs for administrative actions.
- No storage of unnecessary personal information.
- Backups and recovery procedures.

---

## 5. Future Tables

Future versions may include:

- Open API Access Keys
- Research Datasets
- Saved Searches
- AI Conversation History
- Multi-language Content
- Media Library
- Volunteer Moderation
- Digital Evidence Repository

---

## Database Summary

The initial design consists of more than 20 interconnected tables covering users, institutions, budgets, spending, projects, procurement, public debt, audit reports, public participation, citizen reports, notifications, analytics, and system administration. The schema is designed to support future growth while maintaining data integrity, security, and performance.
