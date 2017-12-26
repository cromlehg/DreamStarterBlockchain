#!/bin/bash
echo "Check Linux version..."

LINUX_NAME=`gawk -F= '/^ID=/{print $2}' /etc/os-release`
LINUX_VERSION=`gawk -F= '/^VERSION_ID=/{print $2}' /etc/os-release`
echo "Name $LINUX_NAME"
echo "Version $LINUX_VERSION"

sudo apt-get install -y \
    autoconf \
    automake \
    cmake \
    g++ \
    git \
    libssl-dev \
    libtool \
    make \
    pkg-config \
    python3 \
    python3-jinja2

sudo apt-get install -y \
    libboost-chrono-dev \
    libboost-context-dev \
    libboost-coroutine-dev \
    libboost-date-time-dev \
    libboost-filesystem-dev \
    libboost-iostreams-dev \
    libboost-locale-dev \
    libboost-program-options-dev \
    libboost-serialization-dev \
    libboost-signals-dev \
    libboost-system-dev \
    libboost-test-dev \
    libboost-thread-dev

sudo apt-get install -y \
    doxygen \
    libncurses5-dev \
    libreadline-dev \
    perl


git submodule update --init --recursive
