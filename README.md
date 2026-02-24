# **AdventureWorks Data Engineering Project**
### **Project Overview**
This project demonstrates an end-to-end Azure Data Engineering pipeline using the Medallion Architecture (Bronze, Silver, Gold) pattern on the AdventureWorks dataset.
The pipeline ingests data dynamically from GitHub using Azure Data Factory (ADF), processes and transforms it using Azure Databricks, and finally serves curated business-ready data through Azure Synapse Analytics.

### **🗂️ Project Folder Structure**
```
AdventureWorks-DataEngineeringProject/
├── **Bronze Layer**
│   └── DynamicGithub2RawIngestion.json
│
├── **Silver Layer**
│   └── silver_layer.ipynb
│
├── **Gold Layer**
│   ├── Create Schema.sql
│   ├── Create Views Gold.sql
│   └── External Table.sql
│
├── **Dataset**
│   ├── dataset_datalake_raw.json
│   ├── dataset_dynamic_datalake.json
│   ├── dataset_dynamic_github.json
│   ├── dataset_http.json
│   └── dataset_parameters_github.json
│
├── **Linked Service**
│   ├── AzureDataLakeStoragelinkedservices.json
│   ├── httplinkedservice.json
│   ├── synapseanalytics-adventureworks-WorkspaceDefaultSqlServer.json
│   └── synapseanalytics-adventureworks-WorkspaceDefaultStorage.json
│
├── **Pipeline**
│   ├── DynamicGithub2RawIngestion.json
│   └── Github2Raw.json
│
├── **SQL Script (Synapse Analytics)**
│   ├── Create Schema.json
│   ├── Create Views Gold.json
│   └── SQL script 2.json
```

### **🏗️ Architecture Overview**
<img width="1172" height="550" alt="image" src="https://github.com/user-attachments/assets/23a34985-72f0-478a-be12-c23dab61f2a2" />
#### **🥉 Bronze Layer – Raw Data Ingestion**
* Tool Used: Azure Data Factory
* Objective: Ingest raw CSV files dynamically from GitHub into Azure Data Lake Storage Gen2.
* This pipeline: Connects to GitHub via HTTP linked service, Uses parameterized datasets, Dynamically ingests multiple files, Stores raw data into ADLS Gen2
* Linked Services: HTTP (GitHub connection), Azure Data Lake Storage Gen2
* Output: Raw CSV files stored in (adls/container/bronze/)

#### **🥈 Silver Layer – Data Transformation**
* Tool Used: Azure Databricks
* Notebook: silver_layer.ipynb
* Objective: Clean, transform, and standardize raw data.
* Transformations Performed: Data type casting, Column renaming, Null handling, Deduplication, Data validation Writing processed data into Silver container (Parquet/Delta)
* Output: adls/container/silver

#### **🥇 Gold Layer – Business-Level Data Modeling**
* Tool Used: Azure Synapse Analytics
* SQL Scripts: Create Schema.sql, External Table.sql, Create Views Gold.sql
* Objective: Create business-ready views for reporting & analytics.
* Steps: Create Schema, Create External Tables on Silver Layer data, Create curated Views for reporting
* Final Output: Gold layer with Aggregated tables, Business logic applied, Analytical views for BI tools

### **Linked Services:** Linked services act as connectors between services.
| **Linked Service**                                  | **Purpose**                    |
|-----------------------------------------------------|--------------------------------|
| AzureDataLakeStoragelinkedservices.json             | ADF → ADLS Gen2                |
| httplinkedservice.json                              | ADF → GitHub (HTTP)            |
| synapseanalytics-WorkspaceDefaultSqlServer.json     | Synapse SQL endpoint           |
| synapseanalytics-WorkspaceDefaultStorage.json       | Synapse Storage                |











<img width="920" height="528" alt="Pipeline Architecture" src="https://github.com/user-attachments/assets/4210b965-8fe8-458d-9fba-2a79b7f84984" />

<img width="940" height="530" alt="image" src="https://github.com/user-attachments/assets/e187c0b9-0cad-429e-a3f1-efb634b5732b" />

### Conclusion
- This project showcases a complete modern data engineering workflow on Azure, implementing best practices like:
  * Layered architecture
  * Dynamic ingestion
  * Separation of concerns
  * Scalable analytics design
- It reflects real-world enterprise data engineering solutions using Azure cloud technologies.

![Static Badge](https://img.shields.io/badge/https%3A%2F%2Fimg.shields.io%2Fbadge%2Fany_text-you_like-blue)




