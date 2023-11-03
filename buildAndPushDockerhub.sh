# docker login --username=$DOCKER_USERNAME --password=$DOCKER_PASSWORD
#export TAG=2.0.2
#export TAG=latest
export TAG=dev
#docker buildx build --platform linux/amd64 -t opendoor/git-resource:$TAG --build-arg base_image=paketobuildpacks/run-jammy-base:latest . --push
docker buildx build --platform linux/amd64 -t opendoor/git-resource:$TAG --build-arg base_image=ubuntu:20.04 . --push
