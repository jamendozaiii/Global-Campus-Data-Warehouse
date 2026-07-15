# 🏛️ Global Campus Data Warehouse Architecture

## 📌 Executive Summary
This project demonstrates an end-to-end Data Engineering and Business Intelligence solution designed to solve a common enterprise problem: **centralizing decentralized, siloed data from multiple local campuses into a single, automated source of truth.** 

By applying Kaizen principles of continuous improvement, this project transforms highly manual data aggregation processes into an automated ETL pipeline, culminating in a robust dimensional model optimized for executive reporting.

---

## 🛠️ Architecture & Tech Stack
*   **ETL & Data Transformation:** Power Query (M Language), SQL
*   **Data Modeling:** Power BI (Star Schema design)
*   **Visualization & Reporting:** Power BI
*   **Core Focus:** Pipeline Automation, Data Integrity, Dimensional Modeling

---

## 🏗️ The Engineering Process (ETL)

The core of this project was engineering a reliable pipeline to handle disparate data sources.

### 1. Extract (Data Ingestion)
Simulated the ingestion of decentralized data originating from various formats (CSV, Excel, local databases) representing different campus locations. The challenge was standardizing the inconsistent data structures from each source.

### 2. Transform (Data Cleaning & Standardization)
Utilized Power Query as the primary transformation engine to clean and structure the raw data:
*   **Data Type Enforcement:** Ensured strict data typing to prevent downstream errors.
*   **Handling Nulls & Anomalies:** Implemented logic to handle missing values and standardize naming conventions across campuses.
*   **Merging & Appending:** Consolidated individual campus data into unified staging tables.

### 3. Load (Data Modeling)
Rather than loading flat files directly into the reporting layer, the data was structured into a highly optimized dimensional model.

---

## 📐 Dimensional Modeling (Star Schema)

To ensure high query performance and logical data relationships, the centralized data was modeled using a **Star Schema** architecture. 

*   **Fact Tables:** Designed to store the quantitative, granular event data (e.g., student enrollments, financial transactions, course registrations).
*   **Dimension Tables:** Created comprehensive dimension tables (e.g., `Dim_Campus`, `Dim_Date`, `Dim_Program`) to provide the descriptive context necessary for slicing and filtering the data.
*   **Relationships:** Established strictly defined 1-to-Many relationships with enforced referential integrity, ensuring accurate cross-filtering across the entire model.

---

## 🔄 Process Automation & Kaizen Impact

Before this architecture, generating campus-wide metrics required manual data extraction, manipulation in Excel, and ad-hoc reporting—a process highly susceptible to human error and latency. 

By engineering this automated pipeline:
*   **Latency Reduced:** Reporting shifted from manual, weekly updates to an automated refresh cycle.
*   **Single Source of Truth:** Eliminated data discrepancies between different campus reports.
*   **Scalability:** The Star Schema is designed to easily integrate new campuses or data sources without breaking the existing architecture.
