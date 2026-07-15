# 🌍 Global Campus Data Warehouse Architecture

## 📌 Executive Summary
This repository contains the architecture and documentation for a scalable Data Engineering and Business Intelligence solution designed for a global education network. The project objective is to engineer the elegant flow of data from decentralized systems into a centralized repository. 

Modeled for an institution spanning over 50 schools across five continents and serving in excess of 20,000 students annually, this architecture unifies disparate data sources across core educational domains: Business, hospitality management, culinary arts, and gastronomy. By applying Kaizen principles, highly manual data entry processes are eliminated in favor of automated, efficient business workflows.

---

## 🛠️ Architecture & Tech Stack
*   **ETL & Data Transformation:** Power Query (M Language), SQL
*   **Data Modeling:** Power BI (Star Schema / Dimensional Modeling)
*   **Visualization & Reporting:** Power BI
*   **Automation & Alerting:** Power Automate, Power BI Data Alerts

---

## 🏗️ The Engineering Process (ETL Pipeline)

The core challenge addressed by this architecture is collating and centralizing data from multiple sources to report against. The pipeline integrates three simulated primary data streams:

1.  **Azure SQL Databases:** Handling structured Financial and Sales data.
2.  **SharePoint (Excel/CSV):** Ingesting decentralized Student Performance and Functional Excellence metrics submitted by regional campus directors.
3.  **Third-Party APIs:** Connecting external Compliance and Risk Management audit data.

### Data Transformation & Cleaning
Raw data undergoes rigorous cleaning, massaging, and transformation into comparable formats using Power Query:
*   **Currency Standardization:** Dynamically converting local continent currencies into a unified base currency for global financial roll-ups.
*   **Unpivoting Unstructured Data:** Transforming hard-coded, local Excel spreadsheet schedules into tabular formats suitable for database ingestion.
*   **Data Quality Management:** Enforcing strict data typing and automated handling of null values to ensure reporting accuracy and integrity.

---

## 📐 Dimensional Modeling (Star Schema)

To support a wide variety of applications and ensure data is accurate and available to consume, the transformed data is structured using advanced dimensional modeling techniques. 

*   **Fact Tables:** `Fact_Financials`, `Fact_StudentPerformance`, and `Fact_ComplianceRisk` track granular, quantitative metrics.
*   **Dimension Tables:** `Dim_Campus`, `Dim_Date`, and `Dim_Program` (Business, Culinary Arts, etc.) provide the necessary context for slicing the data.
*   **Relationships:** Strictly defined 1-to-Many active relationships ensure optimal DAX query performance and seamless cross-filtering.

---

## 🧮 Advanced DAX & Business Logic

The reporting layer translates raw tables into business insights using statistical tools and methods. Key DAX implementations include:

*   **Year-Over-Year Growth:** 
    ```dax
    YoY_Student_Growth = DIVIDE([Total_Students_CY] - [Total_Students_PY], [Total_Students_PY], 0)
    ```
*   **Dynamic Risk Thresholds:** 
    ```dax
    Risk_Flag = IF([Compliance_Score] < 85, "High Risk", "Acceptable")
    ```

---

## 📊 Global Dashboard & Automated Workflows

The final output is a suite of executive reporting tools designed for tight integration and up-to-date data delivery. 

**The Global View Dashboard:**
Features a global view reporting model to facilitate subsequent expansion to other campus locations. It includes top-level geographical mapping, dynamic KPI cards for Financials and Functional Excellence, and deep drill-through capabilities to investigate specific regional performance.

**Automated Actionable Alerts:**
The system is designed for the automated identification and notification of data changes and thresholds requiring action. If a campus triggers a `Risk_Flag` (e.g., a drop in compliance standards), automated workflows immediately notify regional directors, shifting the organization from reactive reporting to proactive risk management.

---

## 🤝 Stakeholder Communication & Impact
A critical component of this architecture is driving business insights for non-technical stakeholders. By replacing manual spreadsheets with this centralized Power BI platform, regional leadership and executive teams gain immediate, self-service access to accurate data, allowing them to focus on strategic hospitality and educational initiatives rather than data aggregation.
