#!/bin/bash

sudo docker build -t xailab .
sudo docker run --name xai -p 8888:8888 xailab
