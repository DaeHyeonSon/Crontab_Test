#!/bin/bash

# 파일들이 위치한 디렉토리 (파일을 찾을 경로)
SOURCE_DIR="/home/username"

# 폴더가 생성될 경로 (오늘 날짜 폴더가 위치한 경로)
DEST_DIR="/home/username"

# 오늘 날짜를 'YYYY-MM-DD' 형식으로 가져옴
TODAY=$(date +"%Y-%m-%d")

# 오늘 날짜 폴더가 없으면 생성
if [ ! -d "$DEST_DIR/$TODAY" ]; then
    mkdir "$DEST_DIR/$TODAY"
fi

# 오늘 작성된 파일들을 찾고 폴더로 이동
find "$SOURCE_DIR" -type f -newermt $(date +%Y-%m-%d) ! -newermt $(date +%Y-%m-%d -d tomorrow) -exec mv {} "$DEST_DIR/$TODAY" \;


