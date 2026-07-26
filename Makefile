.PHONY: help install dev test lint format clean docker-up docker-down seed

help:
	@echo "UniversityRAG Development Automation Commands"
	@echo "---------------------------------------------"
	@echo "make install     : Sync Python & Node dependencies"
	@echo "make dev         : Start local environment and containers"
	@echo "make test        : Run backend and frontend unit tests"
	@echo "make lint        : Run code style and type checkers"
	@echo "make format      : Automatically format codebase"
	@echo "make docker-up   : Spin up local database infrastructure"
	@echo "make docker-down : Stop local database infrastructure"
	@echo "make seed        : Seed local database with mock data"

install:
	uv sync
	pnpm install

docker-up:
	docker compose -f deployment/docker/docker-compose.dev.yml up -d

docker-down:
	docker compose -f deployment/docker/docker-compose.dev.yml down

dev: docker-up
	uv run uvicorn backend.app.main:app --reload --port 8000

test:
	uv run pytest backend/tests/unit
	pnpm --filter frontend test

lint:
	uv run ruff check backend/
	uv run mypy backend/app
	pnpm biome check frontend/

format:
	uv run ruff format backend/
	pnpm biome format --write frontend/

seed:
	uv run python scripts/seed-db.py
