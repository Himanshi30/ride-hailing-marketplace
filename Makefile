.PHONY: scaffold

scaffold:
	mkdir -p generators
	mkdir -p streaming
	mkdir -p dbt/models/staging
	mkdir -p dbt/models/marts
	mkdir -p dbt/tests
	mkdir -p airflow/dags
	mkdir -p infrastructure
	mkdir -p monitoring
	mkdir -p docs
	mkdir -p tests
	mkdir -p .github/workflows
	touch generators/driver_generator.py
	touch generators/rider_generator.py
	touch streaming/bronze_ingest.py
	touch streaming/silver_transform.py
	touch streaming/gold_aggregations.py
	touch dbt/dbt_project.yml
	touch dbt/models/staging/.gitkeep
	touch dbt/models/marts/.gitkeep
	touch dbt/tests/.gitkeep
	touch airflow/dags/historical_backfill.py
	touch airflow/dags/daily_rollup.py
	touch infrastructure/s3.tf
	touch monitoring/lag_dlq_check.py
	touch docs/architecture-v3.mermaid
	touch docs/architecture-v3.html
	touch docs/failure-scenarios.md
	touch tests/.gitkeep
	touch README.md
	touch .env.example
	touch docker-compose.yml
	@echo "Scaffold complete"
