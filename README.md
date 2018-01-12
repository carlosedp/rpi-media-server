# rpi-media-server
Docker compose files to create a Raspberry Pi Media Server

The repository builds a media server on Raspberry Pi composed of:

* Transmission torrent client
* SickRage TV Show downloader
* Couch Potato Movie downloader
* Plex Media Server
* HTPCManager to monitor the health of the server
* Portainer to manage the deployed containers

Edit the .env file to add your media and download paths.

To run:

    docker-compose up -d

The repository includes two scripts to launch a docker container to backup and restore your docker volumes.

The backup script will backup all your docker volumes or the volume specified.

The restore will take the .tar.gz file and restore it to an existing volume or create a new one if it does not exist.
