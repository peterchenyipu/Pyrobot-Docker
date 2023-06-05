# STEP 7 - Dependencies and config for calibration
LOCOBOT_FOLDER=~/low_cost_ws
cd $LOCOBOT_FOLDER
source devel/setup.bash
chmod +x src/pyrobot/robots/LoCoBot/locobot_navigation/orb_slam2_ros/scripts/gen_cfg.py
rosrun orb_slam2_ros gen_cfg.py
HIDDEN_FOLDER=~/.robot
if [ ! -d "$HIDDEN_FOLDER" ]; then
    mkdir ~/.robot
    cp $LOCOBOT_FOLDER/src/pyrobot/robots/LoCoBot/locobot_calibration/config/default.json ~/.robot/
fi

# STEP 8 - Setup udev rules
cd $LOCOBOT_FOLDER/src/pyrobot/robots/LoCoBot
if [ ! -d "/etc/udev/rules.d"]; then
    mkdir /etc/udev/rules.d
fi
sudo cp udev_rules/*.rules /etc/udev/rules.d
sudo service udev reload
sudo service udev restart
sudo udevadm trigger
sudo usermod -a -G dialout $USER


