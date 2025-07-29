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
2.  Run the Data Pipeline Locally (without Docker)

```bash
python -m src.main.main
```
3. Deploying to AWS
   - Step 1. Create ECR Repository
     ```bash
     aws ecr create-repository --repository-name [your-repo-name]
     ```
   - Step 2. Authenticate Docker with ECR
     ```bash
     aws ecr get-login-password | docker login \
     --username AWS --password-stdin [your-repo-uri-domain]
     ```
    
    - Step 3: Build Docker Image for AWS (if not on Intel/AMD machines)
      ```bash
      docker buildx build --platform linux/amd64 -t my-etl-app .
      ```
     - Step 4: Tag and Push Image
       ```bash
       docker tag [your-repo-name] [your-repo-uri-domain]
       docker push [your-repo-uri-domain]
       ```
      - Step 5: Create ECS Cluster (Select AWS Fargate (Serverless))
      - Step 6: Create ECS Task Definition (Choose Launch type: Fargate)
      - Step 7: Run ECS Task (Choose Launch type: Fargate)
      - Step 8: Monitor Task
          - Go to Tasks tab in the cluster
          - Watch statuses:

            PROVISIONING → RUNNING → STOPPED

         - Exit code 0 = success
      - Step 9: View Logs in ECS Console or  CloudWatch

4. Launch the Interactive IoT Dashboard using Streamlit

```bash
streamlit run dashboard/dashboard_app.py
```
