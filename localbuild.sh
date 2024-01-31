#!/bin/bash

cd web && npm install && npm run build

cd ..
GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o webssh

cp webssh docker/result/webssh_linux_amd64
cd docker && docker build -t webssh .
