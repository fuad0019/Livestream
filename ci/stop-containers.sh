if [ "$(docker ps -q -f name=rtmp_server)" ]; then
        # cleanup
        docker stop rtmp_server
        docker rm rtmp_server
        docker rmi -f livestream_rtmp


fi

if [ "$(docker ps -q -f name=frontend)" ]; then
        # cleanup
        docker stop frontend
        docker rm frontend
        docker rmi -f livestream_frontend
fi


if [ "$(docker ps -q -f name=auth)" ]; then
        # cleanup
        docker stop auth
        docker rm auth
        docker rmi -f livestream_auth

fi