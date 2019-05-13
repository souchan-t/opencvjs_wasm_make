# Make OpenCVJS WebAssembry

FROM ubuntu

RUN apt update && apt install -y python2.7 cmake git
RUN ln -s /usr/bin/python2.7 /usr/bin/python

RUN mkdir /home/root
WORKDIR /home/root

RUN git clone https://github.com/juj/emsdk.git && git clone https://github.com/opencv/opencv.git
RUN /home/root/emsdk/emsdk install latest && /home/root/emsdk/emsdk activate latest


#RUN python /home/root/opencv/platforms/js/build_js.py build_js --build_wasm

CMD ["source","/home/root/emsdk/emsdj_env.sh","&&","python","/home/root/opencv/platforms/js/build_js.py","build_js","--build_wasm"]

