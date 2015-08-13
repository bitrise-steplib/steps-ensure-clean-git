#!/bin/bash

echo "Searching for changes in tracked files..."
modified_files="$(git status --porcelain)"
if [ ! -z "${modified_files}" ] ; then
  echo "There are uncommited files:"
  echo "${modified_files}"
  exit 1
fi

echo "There are no uncommited files - yeah!!"
