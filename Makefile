setup:
	cd functions; npm install
	npm -g install firebase-tools
	firebase --version
	firebase login
	firebase use --add

function:
	firebase deploy --only functions

local:
	firebase serve --only hosting

deploy:
	firebase deploy --only firestore