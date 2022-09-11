#!/bin/sh

cucumber PLATFORM=$ENVIRONMENT --format progress -c --format html --out test-output/report_$ENVIRONMENT.html
