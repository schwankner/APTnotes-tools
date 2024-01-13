# tools
Tools to download the APTnotes reports via docker container.
Updated to Python 3.12 with updated dependencies as of Jan 12 2024.
Synchronous and asynchronous downloads are available, but the async is strongly recommended, because it's way faster.

### Docker image
You can use prebuild Docker images from the registry or build them on your machine.
The Docker images are build for amd64 and arm64. Docker will download the correct image automatically.
Only the async Docker image is available from the registry, because it's mainly used.
#### Usage

    docker run \
        --mount type=bind,source="$(pwd)"/reports,target=/usr/src/app/reports \
        ghcr.io/schwankner/aptnotes-tools

This mounts the reports folder in the container and downloads all the reports to it.
#### Build
There are two Dockerfiles, one for sync and another for async download of the reports. Use the one which fits for you.

    docker build \
        -f APTnotes_async_dockerfile.Dockerfile 
        . \
        -t aptnotes/tools-async:latest

Note!: If you build the image your self, you have to change the image name in the `docker run` command to `localhost/aptnotes/tools-async`.