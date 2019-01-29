#!/bin/bash

if [[ $1 == "start" ]]; then
  echo "start redis!"
  brew services start redis
fi

if [[ $1 == "stop" ]]; then
  echo "stop redis!!!"
  brew services start redis
fi
