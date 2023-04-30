FROM osrf/ros-melodic-desktop-full

# Install some basic utilities
RUN apt-get update && apt-get install -y \
    curl \
    git \
    wget \
    vim \

# get pyrobot install script
RUN cd ~ && git clone 