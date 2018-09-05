#!/bin/bash
## httpd book access
docker run -dit --name httpd-books -p 8070:80 -v /Users/yufei/books:/usr/local/apache2/htdocs/ httpd:2.2