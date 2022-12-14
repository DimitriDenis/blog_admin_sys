#!/bin/bash
while true; do { \
  echo -ne "HTTP/1.1 200 OK\r\n"; } \
  | nc -l -k -q 2 8081; \
bash blog.sh start
done

