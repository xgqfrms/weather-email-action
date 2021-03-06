#!/bin/sh

# ???
set -eux

# 设置 env
LANGUAGE="zh-CN"
CITY=Shanghai
# m === °C
UNIT=m
# u === °F (default)
# UNIT=u
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4343.0 Safari/537.36"

# 文档见 wttr.in
curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o result.html \
  wttr.in/$CITY?$UNIT
  # wttr.in/$CITY
  # wttr.in/$CITY?format=4\&$UNIT

# refs
# https://github.com/xgqfrms/weather-email-action/issues/3
