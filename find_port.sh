#!/bin/bash
lsof -PiTCP -sTCP:LISTEN | grep $1