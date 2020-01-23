#!/bin/bash
cat to_delete.txt | tr ' \tr' '\n' | sed -e 's/$/.txt/' | sed 's#^#delete/#' | xargs rm 

