FROM peteop/locobot_pyrobot:latest

SHELL ["/bin/bash", "-c"]

RUN source ~/.bashrc && source /root/pyenv_pyrobot_python3/bin/activate && source /root/pyrobot_catkin_ws/devel/setup.bash && pip3 install --upgrade --force jupyter-console

RUN echo "Done"