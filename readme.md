# Docker for PyRobot and Locobot

## Image creation

Run the following to create an image:

```bash
cd Docker
docker build -t locobot_docker .
```

## Container creation

Modify the `run_docker_gpu.bash` file to launch the image that you created, then execute it.