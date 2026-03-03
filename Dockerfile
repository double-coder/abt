FROM python:3.11-slim

WORKDIR /usr/app

RUN pip install \
    dbt-core \
    dbt-postgres

COPY . .

ENV DBT_PROFILES_DIR=/usr/app

ENTRYPOINT [ "dbt" ]
