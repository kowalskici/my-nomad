## Create nomad client image
`docker build -t nomad-client:0.1 . -f Dockerfile.client`

## Create nomad server image
`docker build -t nomad-server:0.1 . -f Dockerfile.server`