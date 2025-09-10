.PHONY: install start test clean help

help: ## Show this help message
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

install: ## Install dependencies using uv
	uv sync

start: ## Start the FastAPI application
	uv run python -m uvicorn src.app:app --host 0.0.0.0 --port 8000 --reload

test: ## Run smoke test to verify the application works
	@echo "Starting application in background..."
	@uv run python -m uvicorn src.app:app --host 0.0.0.0 --port 8002 & \
	SERVER_PID=$$!; \
	sleep 3; \
	echo "Testing API endpoint..."; \
	if curl -s http://localhost:8002/activities > /dev/null; then \
		echo "✓ Application is working correctly"; \
		kill $$SERVER_PID 2>/dev/null || true; \
		exit 0; \
	else \
		echo "✗ Application test failed"; \
		kill $$SERVER_PID 2>/dev/null || true; \
		exit 1; \
	fi

clean: ## Clean up build artifacts and virtual environment
	rm -rf .venv
	rm -rf dist
	rm -rf *.egg-info