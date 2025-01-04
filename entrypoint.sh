IMAGE_NAME="gcr.io/ferrous-module-446709-u1/github.com/MaheshRavilla2018/testMahesh:$COMMIT_SHA"

echo $GCLOUD_SERVICE_KEY | docker login -u _json_key --password-stdin https://$INPUT_GCR_HOST/
docker build -t $IMAGE_NAME .
docker push $IMAGE_NAME