# tools
Tools to download the APTnotes reports via docker container.

### Docker image
#### Usage

    docker run --mount type=bind,source="$(pwd)"/reports,target=/usr/src/app/reports localhost/aptnotes/tools

This mounts the reports folder in the container and downloads all the reports to it.
#### Build

    docker build -f APTnotes_sync_dockerfile.Dockerfile . -t aptnotes/tools:latest

Note!: If you build the image your self, you have to change the image name in the `docker run` command to `localhost/aptnotes/tools`.