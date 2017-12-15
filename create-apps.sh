#!/bin/bash
set -e

node unitejs/unitejs-cli/bin/unite configure --packageName=polymer-javascript --title="Polymer JavaScript" --profile=PolymerJavaScript --outputDirectory=./apps/polymer-javascript
mkdir -p ./apps/polymer-javascript/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.js $_
mkdir -p ./apps/polymer-javascript/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers-polymer/*.js $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/polymer-javascript
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/polymer-javascript
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/polymer-javascript
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/polymer-javascript

node unitejs/unitejs-cli/bin/unite configure --packageName=polymer-typescript-commonjs --title="Polymer TypeScript CommonJS" --profile=PolymerTypeScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/polymer-typescript-commonjs
mkdir -p ./apps/polymer-typescript-commonjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/polymer-typescript-commonjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers-polymer/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/polymer-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/polymer-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/polymer-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/polymer-typescript-commonjs

node unitejs/unitejs-cli/bin/unite configure --packageName=polymer-typescript-systemjs --title="Polymer TypeScript SystemJS" --profile=PolymerTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --outputDirectory=./apps/polymer-typescript-systemjs
mkdir -p ./apps/polymer-typescript-systemjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/polymer-typescript-systemjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers-polymer/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/polymer-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/polymer-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/polymer-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/polymer-typescript-systemjs
