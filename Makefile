.PHONY: test deploy

all: test deploy

test:
	@echo "Running tests..."
	@./test_script.sh

deploy: test
	@echo "Deploying to production..."
	@./deploy_script.sh

clean:
	@echo "Cleaning up..."
	@rm -rf build
	@rm -rf dist
	@rm -rf *.egg-info
	@rm -rf .pytest_cache
	@rm -rf .coverage
	@rm -rf .pytest_cache
	@rm -rf .tox