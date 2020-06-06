#!/bin/bash

RESULT=$(dartanalyzer --options analysis_options.yaml .)
# エラー表示がない場合の最低行数が２行なので
if [ "$(echo "$RESULT" | wc -l)" -eq  2 ]; then
  echo "Not Exist Lint Error"
  exit 0
fi
echo "Exist Lint Error"
echo "$RESULT"
exit 1
