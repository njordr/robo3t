# robo3t
Docker container to run Robo3t https://robomongo.org/ from a docker container

## build
```
docker build -t robo3t .
```

## run from local created image
```
docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -v "$HOME/data/robo3t/3T:/root/.3T" -v "$HOME/data/robo3t/config:/root/.config/3T" robo3t
```

## run from public docker image
```
docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -v "$HOME/data/robo3t/3T:/root/.3T" -v "$HOME/data/robo3t/config:/root/.config/3T" njordr/robo3t
```

## Issues
```
If you hit this error while starting the container:
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'
dbus[6]: The last reference on a connection was dropped without closing the connection. This is a bug in an application. See dbus_connection_unref() documentation for details.
Most likely, the application was supposed to call dbus_connection_close(), since this is a private connection.
  D-Bus not built with -rdynamic so unable to print a backtrace
Aborted (core dumped)
```
you have two options:
- upgrade docker engine to version >=18.06
- run the container with this option: `--security-opt apparmor:unconfined` or `--security-opt seccomp:unconfined`
