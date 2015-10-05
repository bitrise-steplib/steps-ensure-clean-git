#!/bin/bash
if [ ! -z "${dir_to_check}" ] ; then
  echo "Changing directory to:"
  echo "${dir_to_check}"
  cd ${dir_to_check}
fi

echo "Searching for changes in tracked files..."
modified_files="$(git status --porcelain)"
if [ ! -z "${modified_files}" ] ; then
  echo "There are uncommited files:"
  echo "${modified_files}"
  exit 1
fi

echo "There are no uncommited files - yeah!!"
