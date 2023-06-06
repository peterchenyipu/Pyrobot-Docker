# List of locobot packages

- [Interbotix ros_core](https://github.com/Interbotix/interbotix_ros_core)
- [Interbotix ros rovers](https://github.com/Interbotix/interbotix_ros_rovers)
- [Interbotix ros toolboxes](https://github.com/Interbotix/interbotix_ros_toolboxes)
- [moveit_visual_tools](https://github.com/ros-planning/moveit_visual_tools.git)
- [sllidar_ros2](https://github.com/Slamtec/sllidar_ros2.git)

Note manual removal of COLCON_IGNORE of the following packages are needed

- interbotix_ros_toolboxes/interbotix_perception_toolbox/COLCON_IGNORE
- interbotix_ros_toolboxes/interbotix_common_toolbox/interbotix_moveit_interface/COLCON_IGNORE
- interbotix_ros_toolboxes/interbotix_common_toolbox/interbotix_moveit_interface_msgs/COLCON_IGNORE

Two submodules linked in `interbotix_ros_core` are:

- `dynamixel_workbench_toolbox`
- `interbotix_xs_driver`: low-level interfaces to easily control the DYNAMIXEL servos on any Interbotix X-Series Robot.

**Note** remember to add the udev rules: `interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk
/99-interbotix-udev.rules`:

```zsh
sudo cp 99-interbotix-udev.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && sudo udevadm trigger
```