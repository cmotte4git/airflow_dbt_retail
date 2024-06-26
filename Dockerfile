FROM quay.io/astronomer/astro-runtime:11.4.0

# install dbt into a virtual environment
RUN python -m venv dbt_venv && source dbt_venv/bin/activate && \
    pip install --no-cache-dir dbt-bigquery==1.8.1 && deactivate && \
    chmod -R 777 dags/dbt
