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

echo_and_run cd "/home/trevor/ros_ws/src/baxter/baxter_examples"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/trevor/ros_ws/install_isolated/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/trevor/ros_ws/install_isolated/lib/python2.7/dist-packages:/home/trevor/ros_ws/build_isolated/baxter_examples/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/trevor/ros_ws/build_isolated/baxter_examples" \
    "/usr/bin/python2" \
    "/home/trevor/ros_ws/src/baxter/baxter_examples/setup.py" \
    build --build-base "/home/trevor/ros_ws/build_isolated/baxter_examples" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/trevor/ros_ws/install_isolated" --install-scripts="/home/trevor/ros_ws/install_isolated/bin"
