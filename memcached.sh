#!/bin/bash
## memcached start/stop shell
if [ -z $1 ]; then
	echo "usage, $0 [start|stop|restart]"
	exit 1
fi

if [[ $1 == "start" ]]; then
	lunchy start memcached
	exit 0
fi

if [[ $1 == "stop" ]]; then
 	lunchy stop memcached
	exit 0
fi

if [[ $1 == "restart" ]]; then
	lunchy stop memcached
	lunchy start memcached
	exit 0
fi
