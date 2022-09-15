#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}"
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="${docker_username}/"
docker build -t "${DockerRepo}auth:latest" -t "${DockerRepo}auth:1.0" auth/
docker build -t "${DockerRepo}frontend:latest" -t "${DockerRepo}frontend:1.0" frontend/

