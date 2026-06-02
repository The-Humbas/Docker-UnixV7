FROM ubuntu:22.04

RUN apt update && apt install -y simh wget unzip nano

WORKDIR /unix

RUN wget http://simh.trailing-edge.com/kits/uv7swre.zip

RUN unzip uv7swre.zip

RUN echo "set cpu 11/45" > boot.ini && \
    echo "set rl0 RL02" >> boot.ini && \
    echo "attach rl0 unix_v7_rl.dsk" >> boot.ini && \
    echo "boot rl0" >> boot.ini

CMD ["pdp11", "boot.ini"]