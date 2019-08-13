[ -z "$CI" ] && echo "This script is meant to run only from CircleCI." && exit 1;
[ -z "$FOLDER" ] && echo "Missing FOLDER env variable - should be server or client" && exit 1;

#use TAG env. variable to create the container with the given tag
TAG="${TAG:-latest}"

APPNAME="chatapp-$FOLDER"
NAMESPACE="aerogear"
CONTAINER="$NAMESPACE/$APPNAME:$TAG"

echo "Building docker container $CONTAINER"

if [ "$FOLDER"=="client" ]; then
  docker build -f $FOLDER/Dockerfile -t "$CONTAINER" --build-arg SERVER_URL=$SERVER_URL .
else
  docker build -f $FOLDER/Dockerfile -t "$CONTAINER" .
fi

[ -z "$DOCKERHUB_USERNAME" ] && echo "Undefined DOCKERHUB_USERNAME, skipping publish" && exit 1;
docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD
docker push "$CONTAINER"

