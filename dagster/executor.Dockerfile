# FROM python:3.7-slim
FROM jupyter/pyspark-notebook

# Set working directory
WORKDIR /opt/dagster/app

# Install dagster requirements
RUN pip install dagster dagster-postgres dagster-docker

# Install user code requirements
RUN pip install pyspark ndjson "psycopg[binary]" requests

ENTRYPOINT ["dagster", "api", "grpc", "-h", "0.0.0.0", "-p", "4000", "-d", "/opt/dagster/app", "-m", "pipelines"]
