#!/bin/bash
grep -R "$1" | sed 's/\:.*//' | sed 's#^.*/##' | sort
 