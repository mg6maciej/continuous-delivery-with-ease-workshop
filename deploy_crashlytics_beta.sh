#!/bin/bash

RELEASE_NOTES=$(git log --format="%cn @ "$TRAVIS_BRANCH"
------
%B" -n 1 $TRAVIS_COMMIT)

echo "$RELEASE_NOTES" > crashlytics_release_notes.txt

./gradlew crashlyticsUploadDistributionDebug
