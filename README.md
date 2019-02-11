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
