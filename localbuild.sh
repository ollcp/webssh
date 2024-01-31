#!/bin/bash

cd web && npm install && npm run build

cd ..
GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o webssh_linux_amd64

exit

mkdir -p docker/result
cp webssh docker/result/webssh_linux_amd64
cd docker && docker buildx build --platform linux/amd64 -t work.cribc.com:5000/ibps/webssh:v1.26 . --push
