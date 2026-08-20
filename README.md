# Bank Loan Application Tracking System

An intermediate relational SQL database application simulating a commercial bank's credit pipeline. This project maps to university coursework in database logic, system analysis, and introductory machine learning frameworks by modeling structural credit assessment checks.

## 🛠️ Advanced Database Mechanisms
* **Domain Check Constraints:** Enforces strict parameters for valid fields (`credit_score BETWEEN 300 AND 850`) ensuring clean tracking pipelines.
* **Status Pipeline Enumeration:** Tracks operational states using structured strings (`'Pending', 'Approved', 'Rejected'`) to reflect true banking lifecycle workflows.
* **Risk Reporting Integration:** Features specialized multi-table conditional joining query structures to dynamically capture and flag high-risk portfolios.

## 📊 Schema Hierarchy
1. `loan_applicants` (Captures financial health metrics and personal identifiers)
2. `loan_requests` (Tracks structured financial applications, types, and approval states)
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/09721576-b6f4-464d-96cc-470c157a2ffb" />

