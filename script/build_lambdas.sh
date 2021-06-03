#!/bin/bash

apt update
apt install -y git zip

cd /app

for lambda in lambdas/*; do
    pushd $lambda >/dev/null

    dart pub get

    mkdir -p build
    dart compile exe bin/server.dart -o build/bootstrap --no-sound-null-safety

    zip -j build/lambda.zip build/bootstrap

    popd >/dev/null
done
