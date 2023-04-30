# Docker for PyRobot and Locobot

## Image creation
**Note you can also pull the image from docker hub!**
```bash
docker pull peteop/locobot_pyrobot
```

Run the following to create an image:

```bash
cd Docker
docker build -t locobot_docker .
```

## Container creation

Modify the `run_docker_gpu.bash` file to launch the image that you created, then execute it.