setup: yarn .clasp.json

yarn:
	yarn add @google/clasp tslint -D
	yarn add @types/google-apps-script

.clasp.json:
	yarn clasp create --rootDir src

clasp/%:
	yarn clasp $(@F)

build: lint
	yarn tsc --outDir build src/Code.ts

lint:
	yarn tslint --fix src/*.ts

push: clasp/push

open: clasp/open
