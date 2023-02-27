FROM python:3.7-slim

RUN pip install dagster dagster-graphql dagit dagster-postgres dagster-docker

ENV DAGSTER_HOME=/opt/dagster/dagster_home
RUN mkdir -p $DAGSTER_HOME

WORKDIR $DAGSTER_HOME
