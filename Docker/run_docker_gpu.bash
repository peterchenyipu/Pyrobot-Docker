# If not working, first do: sudo rm -rf /tmp/.docker.xauth
# It still not working, try running the script as root.

xhost local:root


XAUTH=/tmp/.docker.xauth

docker run -it \
    --name=ros-melodic-nv \
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --env="NVIDIA_DRIVER_CAPABILITIES=all" \
    --env="NVIDIA_VISIBLE_DEVICES=all" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="$XAUTH:$XAUTH" \
    --volume="/dev:/dev" \
    --device-cgroup-rule='c 81:* rmw' --device-cgroup-rule='c 189:* rmw' \
    --net=host \
    --privileged \
    --runtime=nvidia \
    --gpus all \
    peteop/locobot_pyrobot:latest \
    bash

echo "Done."