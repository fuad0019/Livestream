if [[ $(docker container ls) ]]; then
    docker stop $(docker ps -a -q)
    docker rm $(docker ps -a -q)
else
    echo "no containers"
fi