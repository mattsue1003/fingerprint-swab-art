#!/bin/sh
# 由 ../蓋印章圖樣生成器.html 產生 GitHub Pages 用的 index.html
SRC="$(dirname "$0")/../蓋印章圖樣生成器.html"
OUT="$(dirname "$0")/index.html"
{
  printf '%s\n' '<!doctype html>' '<html lang="zh-Hant">' '<head>' '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">' \
    '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}</style>' \
    '</head>' '<body>'
  grep -v -e '^<meta charset="utf-8">$' -e '^<meta name="viewport"' "$SRC"
  printf '%s\n' '</body>' '</html>'
} > "$OUT"
