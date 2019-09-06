FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y software-properties-common
RUN echo | add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt install -y git imagemagick webp coreutils gifsicle exiftool libcairo2-dev ffmpeg libvpx5 libvpx-dev libssl-dev libcurl4-openssl-dev libjpeg-dev libpng-dev libx264-dev libass-dev  libwebp-dev webp gifsicle memcached libmemcached-dev python3-opencv python3-pip python3.7 python3-dev build-essential libgexiv2-dev libpython3-dev python-all-dev libboost-python-dev

RUN ln -sfv /usr/bin/python3 /usr/bin/python
RUN ln -sfv /usr/bin/pip3 /usr/bin/pip

RUN pip3 install py3exiv2 numpy scipy
