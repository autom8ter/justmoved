setup:
	npm -g install firebase-tools
	firebase --version
	firebase login
	firebase use --add

function:
    firebase deploy --only functions

serve:
	firebase serve --only hosting