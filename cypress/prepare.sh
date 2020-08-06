#!/usr/bin/env bash

set -e # exit on errors
BASE_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

cp $BASE_DIR/fixtures/*.md $BASE_DIR/../blog/
cp $BASE_DIR/fixtures/img/*.* $BASE_DIR/../blog/img/
mkdir -p $BASE_DIR/../cypress/integration/__image_snapshots__

npm run build