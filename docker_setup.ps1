#!/bin/bash
# This works on Windows _AND_ Linux

# Build the image
docker build -t xailab .

# Run the lab
docker run --name xai -p 8888:8888 xailab
