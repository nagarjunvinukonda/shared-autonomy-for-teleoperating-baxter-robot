#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/trevor/ros_ws/install_isolated/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/trevor/ros_ws/install_isolated/lib/python2.7/dist-packages:/home/trevor/ros_ws/build_isolated/dynamixel_driver/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/trevor/ros_ws/build_isolated/dynamixel_driver" \
    "/usr/bin/python2" \
    "/home/trevor/ros_ws/src/dynamixel_motor/dynamixel_driver/setup.py" \
    build --build-base "/home/trevor/ros_ws/build_isolated/dynamixel_driver" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/trevor/ros_ws/install_isolated" --install-scripts="/home/trevor/ros_ws/install_isolated/bin"
