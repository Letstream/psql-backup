FROM ubuntu:22.04

RUN apt-get update && apt-get install -y curl ca-certificates gnupg wget

RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt bionic-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

RUN apt-get update && RUN apt-get install -y postgresql-client

RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc && mv mc /usr/bin && chmod +x /usr/bin/mc
