#!/bin/bash

for dir in */; do
  svn update $dir
done
