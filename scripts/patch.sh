#!/bin/bash

time=$(date +"%Y%m%d%H%M%S")
# TODO branch selection
# TODO don't create if last patch file matches
git diff HEAD~1 HEAD > diff${time}.patch
