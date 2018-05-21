IMG_NAME=neutis-docs:$(git log -1 --format=%h)
CONTAINER_PORT=8000
HOST_PORT=8000

docker build -t $IMG_NAME . 
docker run --rm -p $HOST_PORT:$CONTAINER_PORT $IMG_NAME

