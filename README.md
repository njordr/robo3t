# robo3t
Docker container to run Robo3t https://robomongo.org/ from a docker container

## build
```
docker build -t robo3t .
```

## run
```
docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" robo3t
```


