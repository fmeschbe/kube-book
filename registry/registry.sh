#!/bin/sh

REGISTRY=/home/fmeschbe/src/kube-book/registry
NAME="registry"

case "$1" in
  start)
    docker run -d -p 5000:5000 \
      --restart=always \
      -v ${REGISTRY}:/var/lib/registry \
      --name ${NAME} registry:2
    ;;
  status)
    docker ps -a | grep ${NAME}
    ;;
  stop)
    docker stop ${NAME}
    ;;
  rm)
    docker rm ${NAME}
    ;;
  *) echo "Usage: ${0} [ start | status | stop | rm ]"
esac
