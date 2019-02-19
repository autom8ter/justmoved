setup: functions ## Setup development environment
	npm -g install firebase-tools
	firebase --version
	firebase login
	firebase use --add


setup-functions: ## Setup functions
	cd functions; npm install

local: ## Deploy to a local develpment server
	firebase serve --only hosting

deploy: ## Deploy to firestore
	firebase deploy

help:   ## show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/