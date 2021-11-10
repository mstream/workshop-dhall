#! /usr/bin/env bash

set -e

OUTPUT_DIR=generated
OUTPUT_FILE="${OUTPUT_DIR}/out.yml"

rm -f -r "${OUTPUT_DIR}" 
mkdir "${OUTPUT_DIR}"

dhall-to-yaml --file "$1" --output "${OUTPUT_FILE}"

yq . "${OUTPUT_FILE}"


