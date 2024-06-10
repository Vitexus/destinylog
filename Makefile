SPECURI="./destinylog.yml"

server:
	PHP_POST_PROCESS_FILE="node_modules/.bin/prettier --write" openapi-generator-cli generate -i ${SPECURI} -g php-slim4 -c templates/server.yaml --git-user-id Vitexus --git-repo-id destinylog -t templates/server -o server --api-package DestinyLog --model-package DestinyLog
	composer install  -d server/


clean:
	rm -rfv composer.* vendor lib server public


