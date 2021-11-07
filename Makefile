.PHONY: models
models:
	flutter pub get
	flutter pub run build_runner build --delete-conflicting-outputs
	cd models
	dart pub get
	dart run build_runner build --delete-conflicting-outputs

.PHONY: schema
schema:
	npx get-graphql-schema -h 'x-api-key=${GRAPHQL_API_KEY}' ${GRAPHQL_API_ENDPOINT} > models/lib/src/graphql/schema.graphql
	$(MAKE) models