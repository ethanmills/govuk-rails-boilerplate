.PHONY: build-local-image
build-local-image:
	docker pull dfedigital/govuk-rails-boilerplate:builder-latest || true
	docker pull dfedigital/govuk-rails-boilerplate:latest || true
	docker build -t dfedigital/govuk-rails-boilerplate:builder-latest \
		--cache-from dfedigital/govuk-rails-boilerplate:builder-latest \
		--target builder \
		.
	docker build -t dfedigital/govuk-rails-boilerplate:latest \
		--cache-from dfedigital/govuk-rails-boilerplate:builder-latest \
		--cache-from dfedigital/govuk-rails-boilerplate:latest \
		.
