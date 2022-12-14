#!/bin/bash
while true; do { \
  echo -ne "HTTP/1.1 200 OK\r\n"; bash blog.sh; } \
  | nc -l -k -q 2 8081; \
done

