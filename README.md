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
