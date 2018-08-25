# README to Docker Hub
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/f73fa712e4e940bfbe775d2d9e2030ca)](https://app.codacy.com/app/gofunky/readmyhub?utm_source=github.com&utm_medium=referral&utm_content=gofunky/readmyhub&utm_campaign=Badge_Grade_Settings)
[![Dependabot Status](https://api.dependabot.com/badges/status?host=github&repo=gofunky/readmyhub)](https://dependabot.com)
[![CircleCI](https://circleci.com/gh/gofunky/readmyhub/tree/master.svg?style=shield)](https://circleci.com/gh/gofunky/readmyhub/tree/master)
[![Microbadger Version](https://images.microbadger.com/badges/version/gofunky/readmyhub:stable.svg)](https://microbadger.com/images/gofunky/readmyhub:stable "Docker Version")
[![Microbadger Layers](https://images.microbadger.com/badges/image/gofunky/readmyhub:stable.svg)](https://microbadger.com/images/gofunky/readmyhub:stable "Docker Layers")
[![Docker Pulls](https://img.shields.io/docker/pulls/gofunky/readmyhub.svg)](https://hub.docker.com/r/gofunky/readmyhub)
![GitHub License](https://img.shields.io/github/license/gofunky/readmyhub.svg)

This Docker image enables you to push README.md files to the Docker Hub.

## How to use?

Run it with all required parameters:

```console
docker run --rm \
    -v /path/to/readme.md:/data/README.md \
    -e DOCKERHUB_USR=myhubuser \
    -e DOCKERHUB_PWD=myhubpassword \
    -e DOCKERHUB_ORG=myorga \
    -e DOCKERHUB_REPO=myrepo \
     gofunky/readmyhub:stable
```

That's it.


### Environment variables

This image uses environment variables for configuration.

|Available variables     |Default value        |Description                                         |
|------------------------|---------------------|----------------------------------------------------|
|`DOCKERHUB_USR`    |no default           |The Username (not mail address) used to authenticate|
|`DOCKERHUB_PWD`    |no default           |Password of the `DOCKERHUB_USR`-user           |
|`DOCKERHUB_ORG` |`$DOCKERHUB_USR`|Organisation or username for the repository         |
|`DOCKERHUB_REPO`   |no default           |Name of the repository you want to push to          |
|`README_PATH`           |`/data/README.md`    |Path to the README.me to push                       |


### Mount the README.md

By default, if the `README_PATH` environment variable is not set, this image always pushes the file
`/data/README.md` as full description to Docker Hub.

For GitHub repositories you can use `-v /path/to/repository:/data/`.

If your description is not named `README.md` mount the file directory using `-v /path/to/description.md:/data/README.md`.

*Notice that the filename is case sensitive. If your readme is called `readme.md` you have to mount the file directly, not the directory*

## Additional Information

The user you use to push the README.md need to be admin of the repository.
