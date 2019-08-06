# Make OpenCVJS WebAssembry

FROM ubuntu

RUN apt update && apt install -y python2.7 cmake git
RUN ln -s /usr/bin/python2.7 /usr/bin/python

RUN mkdir /home/root
WORKDIR /home/root

RUN git clone https://github.com/emscripten-core/emsdk.git

RUN /home/root/emsdk/emsdk install latest && /home/root/emsdk/emsdk activate latest 
COPY entrypoint.sh /home/root

CMD ["bash","/home/root/entrypoint.sh"]

