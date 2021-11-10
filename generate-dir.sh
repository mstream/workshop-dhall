#! /usr/bin/env bash

set -e

OUTPUT_DIR=generated

rm -f -r "${OUTPUT_DIR}" 
mkdir "${OUTPUT_DIR}"

dhall to-directory-tree --file "$1" --output "${OUTPUT_DIR}"

find "${OUTPUT_DIR}" -type f -exec echo {} \; -exec yq . {} \;


