################### Build Paracooba
FROM satcomp-common-base-image
USER root
#  Install required softwares
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt install -y cmake make build-essential zlib1g-dev libopenmpi-dev wget unzip python3 wget curl libboost-system-dev libasio-dev libboost-program-options-dev libboost-iostreams-dev libboost-coroutine-dev libboost-log-dev pkg-config git

# Build Paracooba
RUN git clone https://github.com/maximaximal/paracooba
WORKDIR paracooba
RUN mkdir build
RUN cd build && cmake .. -DENABLE_TESTS=OFF -DSTATIC_BUILDS=ON -DCMAKE_BUILD_TYPE=Release && make -j4 && cd ..
