#!/bin/sh -e

cd $SNAP_DATA && RUNNER_ALLOW_RUNASROOT="1" $SNAP_DATA/actions-runner/run.sh