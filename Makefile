.PHONY: lambdas
lambdas:
	docker run -v ${PWD}:/app -it dart:stable /bin/bash /app/script/build_lambdas.sh

.PHONY: models
models:
	npx get-graphql-schema -h 'x-api-key=${GRAPHQL_API_KEY}' ${GRAPHQL_API_ENDPOINT} > models/lib/src/graphql/schema.graphql && \
		pushd models && \
		dart run build_runner build --delete-conflicting-outputs && \
		popd