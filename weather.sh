#!/bin/sh

# ???
set -eux

# 设置 env
LANGUAGE="zh-CN"
CITY=Shanghai
UNIT=m
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4343.0 Safari/537.36"

# 文档见 wttr.in
curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o result.html \
  wttr.in/$CITY
  # wttr.in/$CITY?format=4\&$UNIT

