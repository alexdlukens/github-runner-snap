#!/bin/bash

set -e
# get snap architecture from env variable
ARCH=${CRAFT_ARCH_BUILD_FOR}
RUNNER_VERSION="2.320.0"
echo "Downloading snapcraft for $ARCH"

mkdir -p actions-runner && cd actions-runner

# if arch is amd64, download x64 tar
if [ "$ARCH" == "amd64" ]; then
    curl -o actions-runner-linux.tar.gz -L https://github.com/actions/runner/releases/download/v${RUNNER_VERSION}/actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz
elif [ "$ARCH" == "arm64" ]; then
    curl -o actions-runner-linux.tar.gz -L https://github.com/actions/runner/releases/download/v${RUNNER_VERSION}/actions-runner-linux-arm64-${RUNNER_VERSION}.tar.gz
fi

# extract tar
tar xzf ./actions-runner-linux.tar.gz

# remove tar
rm actions-runner-linux.tar.gz

echo "Successfully downloaded actions-runner"