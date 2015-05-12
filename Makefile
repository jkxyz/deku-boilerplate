default: serve
.PHONY: default

##
# Install npm package for Deku and those required to compile ES6/JSX files
node_modules:
	npm install deku browserify babelify

##
# Compile the main JavaScript file to the output file using Browserify
build.js: node_modules src/*.js
	node_modules/browserify/bin/cmd.js -t babelify src/main.js > build.js

##
# The default task: run a web server in the current directory using Python
serve: build.js
	python -m SimpleHTTPServer 8080
.PHONY: serve

##
# Remove all build artifacts from the project
clean:
	rm -rf node_modules build.js
.PHONY: clean
