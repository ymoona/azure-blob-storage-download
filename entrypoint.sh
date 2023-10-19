#!/usr/bin/env bash

set -e

if [[ -z "$INPUT_SOURCE_DIR" ]]; then
  echo "source directory is not set. Quitting."
  exit 1
fi

if [[ -z "$INPUT_CONTAINER_NAME" ]]; then
  echo "storage account container name is not set. Quitting."
  exit 1
fi

if [[ -z "$INPUT_CONNECTION_STRING" ]]; then
  echo "connection string is not set. Quitting."
  exit 1
fi

if [[ -z "$INPUT_FILE" ]]; then
  echo "file is not set. Quitting."
  exit 1
fi



CONNECTION_METHOD=""

CONNECTION_METHOD="--connection-string $INPUT_CONNECTION_STRING"

VERB="download"
az storage blob ${VERB} ${CONNECTION_METHOD} --container-name ${INPUT_CONTAINER_NAME} --file ${INPUT_SOURCE_DIR}/${INPUT_FILE} --name ${INPUT_FILE}