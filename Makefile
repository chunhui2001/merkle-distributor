
### 当前 Makefile 文件物理路径
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

AMOUNT_FILE 	?=scripts/new_example.json

jq:
	HOMEBREW_CURLRC=1 brew install jq

list:
	@# npm i -g ts-node
	npm list -g --depth=0

install:
	yarn

compile:
	yarn compile

run:
	npm run start

generate-merkle-root:
	ts-node scripts/generate-merkle-root.ts --input $(AMOUNT_FILE) | jq .

generate-merkle-root-example:
	yarn generate-merkle-root:example
