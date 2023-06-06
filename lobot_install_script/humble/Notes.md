# Notes

The default installation script does something wrong with the rmw setup: `fastdds_disc_server.service` located in `interbotix_ros_rovers/interbotix_ros_xslocobots/` is not configured properly.

Workaround 1: launch the service manually via:

```zsh
source /opt/ros/humble/setup.zsh
fastdds discovery -i 0 
```
