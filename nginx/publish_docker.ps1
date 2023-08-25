$DO_REPOSITORY = 'touchoftech'
$DO_APPLICATION_TAG = 'nginx'
$DO_APPLICATION_VERSION = 'v0.0.1'

doctl registry login --expiry-seconds 120

docker build -t "${DO_APPLICATION_TAG}:${DO_APPLICATION_VERSION}" .

docker tag "${DO_APPLICATION_TAG}:${DO_APPLICATION_VERSION}" "registry.digitalocean.com/${DO_REPOSITORY}/${DO_APPLICATION_TAG}:${DO_APPLICATION_VERSION}"

docker push "registry.digitalocean.com/${DO_REPOSITORY}/${DO_APPLICATION_TAG}:${DO_APPLICATION_VERSION}"
