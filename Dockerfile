FROM python:3.12-slim

WORKDIR /usr/app

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN pip install \
    dbt-core \
    dbt-postgres

COPY . .

ENV DBT_PROFILES_DIR=/usr/app

ENTRYPOINT [ "dbt" ]
