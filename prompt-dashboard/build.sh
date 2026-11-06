#!/usr/bin/env bash
# src/app.html(본문) → index.html(단독 실행용, 브라우저에서 바로 열기)
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="ko">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n<style>[hidden]{display:none!important}body{margin:0}</style>\n</head>\n<body>\n'; cat src/app.html; printf '\n</body>\n</html>\n'; } > index.html
echo "index.html 생성 완료"
