# docker login --username=$DOCKER_USERNAME --password=$DOCKER_PASSWORD
#export TAG=2.0.0
export TAG=latest
docker buildx build --platform linux/amd64 -t opendoor/git-resource:$TAG --build-arg base_image=paketobuildpacks/run-jammy-base:latest . --push
