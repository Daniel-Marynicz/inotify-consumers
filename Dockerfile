FROM debian:bullseye


RUN set -eux ; \
    apt-get update ; \
    apt-get install -y \
        bsdmainutils \
        ca-certificates \
        curl \
        findutils  \
        procps ; \
    apt-get clean ; \
    rm -rf /var/lib/apt/lists/* ; \
    curl -L https://raw.githubusercontent.com/fatso83/dotfiles/master/utils/scripts/inotify-consumers -o /inotify-consumers ; \
    chmod +x /inotify-consumers

ENTRYPOINT ["/inotify-consumers"]

