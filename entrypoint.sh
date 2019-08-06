#! /bin/bash
/home/root/emsdk/emsdk activate latest
source /home/root/emsdk/emsdk_env.sh
export EMSCRIPTEN="/home/root/emsdk/fastcomp/emscripten"
python /home/root/opencv/platforms/js/build_js.py --build_wasm build_js


