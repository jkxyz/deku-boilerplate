# Deku Boilerplate

Boilerplate for starting basic projects with [Deku](https://github.com/segmentio/deku).

## Usage

The `Makefile` contains a few recipes to facilitate a simple build process using
Browserify and Babelify to compile JSX and ES6 to ES5 JavaScript.

The default task installs the NPM modules to be used, compiles the `src/main.js` 
file to `build.js` using the Babelify transform, and starts a web server at 
`localhost:8080` using a built-in Python web server module.
