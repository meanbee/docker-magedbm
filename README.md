#Magerun Docker Container

This provides a copy of [magedbm](https://github.com/meanbee/magedbm) to be used in a docker environment.  It is based off of our [magento container](https://github.com/meanbee/docker-magento).

#Usage

The container requires an environment variable called `MAGE_ROOT_DIR` to be defined.  This container changes into this director  before running the `magedbm` command.

The container also requires access to your Magento files, and access to the MySQL container.

##Docker Compose

Assuming you have a data container called `data` which contains your files that you mount to `/var/www/html`, and your MySQL container is called `db` then your `docker-compose.yml` might look something like this:

    magedbm:
      image: meanbee/magedbm
      environment:
        MAGE_ROOT_DIR: /var/www/html
      links:
        - db
      volumes_from:
        - data

This image can then be used to easily perform any `magedbm` command, for example:

    docker-compose run magedbm get clientname
