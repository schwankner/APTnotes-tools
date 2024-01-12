# tools
Tools to download the APTnotes reports via docker container.
Updated to Python 3.12 with updated dependencies as of Jan 12 2024.
Synchronous and asynchronous downloads are available, but the async is strongly recommended, because it's way faster.

### Docker image
#### Usage

    docker run --mount type=bind,source="$(pwd)"/reports,target=/usr/src/app/reports localhost/aptnotes/tools-async

This mounts the reports folder in the container and downloads all the reports to it.
#### Build

    docker build -f APTnotes_async_dockerfile.Dockerfile . -t aptnotes/tools-async:latest

Note!: If you build the image your self, you have to change the image name in the `docker run` command to `localhost/aptnotes/tools-async`.