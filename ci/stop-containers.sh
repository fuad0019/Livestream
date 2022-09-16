if [ "$(docker ps -q)" ]; then
        # cleanup
        docker stop $(docker ps -a -q)
        docker rm $(docker ps -a -q)

fi

if [ "$(docker images -a -q)" ]; then
        # cleanup
    docker rmi $(docker images -a -q)
fi

