#!/bin/bash
export files="package.json package-lock.json README.md"
for f in $files; do
    sed -f .kickoff.sed -i $f
done
