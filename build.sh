#!/bin/bash

sudo docker run --rm -v $PWD/build_js:/home/root/build_js -v $PWD/opencv:/home/root/opencv opencvjsbuild
