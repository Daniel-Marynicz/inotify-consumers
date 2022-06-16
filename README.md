# inotify-consumers docker container based script

## Descriptipon 
  Get the procs sorted by the number of inotify watches

  @author Carl-Erik Kopseng

  @latest https://github.com/fatso83/dotfiles/blob/master/utils/scripts/inotify-consumers
 
  Discussion leading up to answer: https://unix.stackexchange.com/questions/15509/whos-consuming-my-inotify-resources


## Prerequisites
### Docker installation

App requires [Docker](https://www.docker.com/) to setup your local development environment.

You need install latest versions of these apps.

For more information about installing docker please follow the documentation:

* docker [https://docs.docker.com/engine/install/](https://docs.docker.com/engine/install/)

After installation on linux systems if you would like to use Docker as a non-root user, you should now consider adding your user to the “docker” group with something like:

```bash
  sudo usermod -aG docker your-user
```
e.g.
```bash
  sudo usermod -aG docker $(whoami)
```

Remember to log out and back in for this to take effect! Or simpler restart your machine.

## Usage 

```shell
docker run --privileged  -v /etc/passwd:/etc/passwd:ro  -v /proc:/proc ghcr.io/daniel-marynicz/inotify-consumers
```

## Build (for local development only)

```shell
docker buildx create --use

docker buildx bake --file docker-bake.hcl --file docker-bake.dev.hcl
```