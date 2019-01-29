#!/bin/bash

if [[ $1 == "start" ]]; then
  echo "start mysql!"
  brew services start mysql@5.7
fi

if [[ $1 == "stop" ]]; then
  echo "stop mysql!!!"
  brew services stop mysql@5.7
fi
