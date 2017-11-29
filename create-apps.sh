#!/bin/bash
set -e

node unitejs/cli/bin/unite configure --packageName=polymer-javascript --title="Polymer JavaScript" --profile=PolymerJavaScript --outputDirectory=./apps/polymer-javascript
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/polymer-javascript

node unitejs/cli/bin/unite configure --packageName=polymer-typescript-amd --title="Polymer TypeScript CommonJS" --profile=PolymerTypeScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/polymer-typescript-commonjs
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/polymer-typescript-commonjs

node unitejs/cli/bin/unite configure --packageName=polymer-typescript-systemjs --title="Polymer TypeScript SystemJS" --profile=PolymerTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --outputDirectory=./apps/polymer-typescript-systemjs
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/polymer-typescript-systemjs

