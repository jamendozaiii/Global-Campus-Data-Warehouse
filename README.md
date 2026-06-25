# Global Campus Data Warehouse & Analytics Portfolio

## 📌 Project Overview
This project demonstrates an end-to-end analytics engineering pipeline designed to establish a centralized data repository from multiple disparate sources. It showcases the ability to audit, ingest, model, and visualize data to drive business insights for global institutional stakeholders.

## 🏗️ Architecture & Data Pipeline
In a multinational environment, data rarely lives in one clean system. This project simulates an Azure-aligned approach to centralizing data from local campuses of varying technical maturity:
*   **Database Exports:** Simulating structured SQL database extracts (e.g., Student Enrollments & Compliance Status).
*   **Legacy Spreadsheets:** Simulating manual financial tracking files from localized teams.
*   **The ETL Process:** Utilizing Power Query to clean, massage, and transform fragmented data into comparable formats, effectively eliminating manual data entry processes.

## 📊 Dimensional Modeling (Star Schema)
To ensure the database is structured properly for reporting, the data is modeled using a Star Schema framework:
*   **Fact Tables:** `Fact_Student_Performance` and `Fact_Financials` track the core metrics.
*   **Dimension Tables:** A central `Dim_Campus_Metadata` table acts as the relational master key.
*   **Impact:** This structure guarantees that data is accurate, scalable, and readily available to consume for a wide variety of downstream applications.

## 📈 Power BI Dashboard Platform
The final visualization layer provides a global view of institutional health. 
Included in this repository is `Dashboard_V1.png`, which tracks:
*   **Financial Performance:** Aggregated revenue tracking across regional campuses.
*   **Functional Excellence & Student Performance:** Automated aggregation of grade percentages and attendance rates.

## ⚙️ Continuous Improvement & Automation
Rooted in Kaizen methodologies, this architecture is designed to support tighter integrations and up-to-date reporting in a timely manner. Future iterations of this model would include automated identification and notifications of data threshold changes (e.g., when a student compliance status shifts to "At-Risk").
