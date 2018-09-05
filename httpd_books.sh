#!/bin/bash
## httpd book access
count=`docker ps -a | grep "httpd-books" | grep -i exited | wc -l`
if [ $count == 1 ]; then
    echo "find exit httpd-books container, start it..."
    docker start httpd-books
    exit 0
fi

up=`docker ps -a | grep "httpd-books" | grep "Up" | wc -l`
if [ $up == 1 ]; then
    echo "find up httpd-books container, just return."
    exit 0
fi

docker run -dit --name httpd-books -p 8070:80 -v /Users/yufei/books:/usr/local/apache2/htdocs/ httpd:2.2