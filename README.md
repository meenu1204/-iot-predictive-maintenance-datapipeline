# IoT Predictive Maintenance Data Pipeline

## Description

A cloud-ready, production-grade data pipeline that processes IoT sensor logs from machines to predict and prevent equipment failures. The pipeline supports automated ETL, KPIs calculation, dashboards, containerization, and AWS ECS (Fargate) deployment with centralized logging in CloudWatch.

## Features

- Data Ingestion: Load raw IoT sensor data from CSV
- Data Cleaning & Transformation: Preprocess sensor data
- Machine Health KPIs: Calculate performance indicators
- Data Persistence: Store processed data and KPIs in SQLite
- Visualization:
   - Matplotlib → Static charts
   - Streamlit → Interactive dashboards with alerts
- Task Orchestration: Apache Airflow for automated ETL workflows
- Containerization: Docker for consistent environments
- AWS Deployment: ECS (Fargate) with ECR and CloudWatch for logging
- Testing: pytest for unit testing

## Tech Stack

| Tool/Service                   | Purpose                        |
|--------------------------------|--------------------------------|
| Python                         | Core scripting                 |
| Pandas/Numpy	                  | Data transformation            |
| Matplotlib                     | Static data visualization      |              
| Streamlit                      | Interactive dashboards         |
| Apache Airflow                 | Orchestrating ETL pipeline     |
| SQLite                         | Data storage                   |
| Docker                         | Containerization               | 
| AWS ECS (Fargate)              | Serverless container deployment|
| AWS ECR                        | Image repository               |
| AWS CloudWatch                 | Centralized logging            |
| dotenv                         | Config management              |
| pytest                         | Unit testing                   |

## Project Structure

```
├── dags/              # Airflow DAGs for scheduling
├── dashboard/         # Streamlit dashboards
├── data/              # Raw and processed data
├── plots/             # Saved charts and graphs
├── src/               # Core ETL logic, KPIs, visualization
├── tests/             # Unit tests
├── Dockerfile         # Docker configuration
├── requirements.txt   # Python dependencies
└── README.md          # Project overview
```

## Project Setup

1. Clone the Repository

```bash
git clone https://github.com/meenu1204/iot-predictive-maintenance-datapipeline
cd iot-predictive-maintenance-datapipeline
```
2.  Run the Data Pipeline Locally

```bash
python -m src.main.main
```

## Installation

1. Clone the repo
2. Install dependencies
3. Run the project
   python src/main.py
4. Run an Airflow DAG or Streamlit dashboard
   

