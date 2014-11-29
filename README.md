snorby-dev-docker
=================

a simple Dockerfile to setup a snorby development environment

Building the Docker image
=========================

```
$ sudo docker build -t="snorby-dev" .
```

Dependencies
============

Running this snorby container requires a mysql-container:

```
sudo docker run --name database -e MYSQL_ROOT_PASSWORD=pw -e MYSQL_DATABASE=snorby -d mysql
```

Getting the snorby source code:

```
git clone https://github.com/snorby/snorby.git
```

Create snorby/config/database.yml and snorby/config/snorby_config.yml.

Running the container
=====================

```
sudo docker run -d --name snorby-dev --link database:database -p 3000:3000 -v `pwd`/snorby:/opt/snorby snorby-dev /opt/runSnorby
```

or

```
sudo docker run -i -t --name snorby-dev --link database:database -p 3000:3000 -v `pwd`/snorby:/opt/snorby snorby-dev /bin/bash
```
