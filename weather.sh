#!/usr/bin/env bash

# set 命令是 shell 内置命令，用于设置和取消设置 shell 中局部变量的值。
# $ set [--abBCefhHkmnpPtuvx] [-o option] [arg …]
set -eux

# 设置 env

# lang
# https://wttr.in/:translation
LANGUAGE="zh-CN"
CITY=Shanghai
# CITY=Moscow
UNIT=m
# UNIT=u
# m === °C (default)
# u === °F
# temperature
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4343.0 Safari/537.36"


# 文档见 https://github.com/chubin/wttr.in
curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o result.html \
    https://v2.wttr.in/$CITY?$UNIT
    # "https://v2.wttr.in/$CITY?$UNIT&lang=ru"
    # "https://v2.wttr.in/$CITY?$UNIT&lang=ru"
    # "https://v2.wttr.in/$CITY?$UNIT&lang=zh-tw"
    # https://v2.wttr.in/$CITY?$UNIT&lang=zh
    # https://v2.wttr.in/$CITY?$UNIT&lang=zh-cn
    # https://v2.wttr.in/$CITY?$UNIT
    # v2 local render base64 iamge bug ❌
    # https://wttr.in/$CITY?$UNIT
    # HHTPS ✅
    # wttr.in/$CITY?$UNIT
    # HTTP ❌
    # http://wttr.in/$CITY?$UNIT
    # HTTP ❌
    # https://wttr.in/$CITY?format=4\&$UNIT
    # https://wttr.in/Shanghai?m
    # wttr.in/$CITY?format=4\&$UNIT

# refs
# https://github.com/xgqfrms/weather-email-action/issues/3
