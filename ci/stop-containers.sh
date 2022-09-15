if [ ! "$(docker ps -q -f name=rtmp_server)" ]; then
        # cleanup
    docker stop rtmp_server
    docker rm rtmp_server

fi

if [ ! "$(docker ps -q -f name=frontend)" ]; then
        # cleanup
    docker stop frontend
    docker rm frontend

fi


if [ ! "$(docker ps -q -f name=auth)" ]; then
        # cleanup
    docker stop auth
    docker rm auth

fi