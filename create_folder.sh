#!/bin/bash

# 폴더가 생성될 경로
DIR="/home/username"

# 오늘 날짜를 'YYYY-MM-DD' 형식으로 가져옴
TODAY=$(date +"%Y-%m-%d")

# 폴더가 이미 존재하는지 확인하고, 없으면 생성
if [ ! -d "$DIR/$TODAY" ]; then
    mkdir "$DIR/$TODAY"
fi
