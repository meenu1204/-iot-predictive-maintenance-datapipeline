# iot-predictive-maintenance-datapipeline

A production-ready data pipeline that processes IoT sensor logs from machines that can help anticipate equipment failures.

## Project structure
--------------------
├── dags/ # (Optional) Airflow DAGs for scheduling
├── dashboard/ # Visual dashboards (e.g., Streamlit)
├── data/ # Raw and processed data
├── plots/ # Saved charts, graphs, etc.
├── src/ # Core logic: data loading, preprocessing, calculate KPIs, data visualisation
├── tests/ # Unit tests
├── Dockerfile # Docker config for consistent environments
├── requirements.txt # Python dependencies
└── README.md # Project overview

## Pipeline features:
--------------------
a. Load the raw IoT Sensor data
b. Clean, validate and transform sensor data
c. Calculate machine health KPIs
d. Store cleaned data + KPIs in SQLite
e. Visualise trends and anomalies using matplotlib
f. Visualise machine alerts using Streamlit
g. Orchestrate tasks using Apache Airflow
h. Containerise with Docker

## Installation

1. Clone the repo
2. Install dependencies
3. Run the project
   python src/main.py
4. Run an Airflow DAG or Streamlit dashboard
   

