FROM postgres:15.0
RUN apt-get update && apt-get install unzip && apt-get --assume-yes install build-essential && apt-get --assume-yes install postgresql-server-dev-15 && apt-get install  -y wget \
  && wget https://github.com/pgpartman/pg_partman/archive/v4.7.2.zip -O 4.7.2.zip \
  && unzip 4.7.2.zip \
  && cd /pg_partman-4.7.2 && pwd && make install && make NO_BGW=1 install
