# If not working, first do: sudo rm -rf /tmp/.docker.xauth
# It still not working, try running the script as root.

xhost local:root


XAUTH=/tmp/.docker.xauth


docker run -it \
    --name=ros-melodic \
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="$XAUTH:$XAUTH" \
    --net=host \
    --privileged \
    locobot_docker \
    bash

echo "Done."
