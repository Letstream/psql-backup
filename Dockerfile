FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl ca-certificates gnupg wget

RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

RUN apt-get update && RUN apt-get install -y postgresql-client-15

RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc && mv mc /usr/bin && chmod +x /usr/bin/mc
