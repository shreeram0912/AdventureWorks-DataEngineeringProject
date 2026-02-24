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

<img width="920" height="528" alt="Pipeline Architecture" src="https://github.com/user-attachments/assets/4210b965-8fe8-458d-9fba-2a79b7f84984" />

<img width="940" height="530" alt="image" src="https://github.com/user-attachments/assets/e187c0b9-0cad-429e-a3f1-efb634b5732b" />

### Conclusion
This project showcases a complete modern data engineering workflow on Azure, implementing best practices like:
* Layered architecture
* Dynamic ingestion
* Separation of concerns
* Scalable analytics design
It reflects real-world enterprise data engineering solutions using Azure cloud technologies.

[!https://img.shields.io/badge/Jai%20Shreeram-FF4500](https://img.shields.io/badge/just%20the%20message-8A2BE2)
