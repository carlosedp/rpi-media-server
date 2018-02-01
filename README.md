# media-server

Docker compose files to create a Media Server on Linux x86-64, Raspberry Pi or any ARM SBC 32bit or 64bit. The images fetched from DockerHub are multi-arch.

The repository builds a media server on Raspberry Pi composed of:

* Transmission torrent client
* SickRage TV Show downloader
* Couch Potato Movie downloader
* Plex Media Server
* HTPCManager to monitor the health of the server

### Media Folder Structure

    /mnt/1TB-WDRed/Downloads/
                            /Incomplete
                            /Movies
                            /TVShows
                  /Movies/
                  /TVShows/
                  /Concerts/

The containers expect a similar structure with Downloads, Incomplete, Movies, TVShows and Concerts directories on your drive. Adjust the environment variables or .env file accordingly.

To make all applications behave similarly, the external volume will be mounted on `/volumes/media` in the containers.

### Usage

Edit the .env file to add the path pointing to the drive where media is.

    MEDIA=/mnt/USB-Drive

The compose file is configured to use Traefik as external ingress controller (to provide external access). In case this is not needed, remove the line `- traefik` from htpcmanager service and remove section below from `networks:` on the end:

        traefik:
          external:
            name: containermgmt_traefik

To run:

    docker-compose up -d

Ps. If using extenal access thru ingress, setup port-forwarding on your router to ports 32400 (for Plex) and 51413 (for transmission) to your internal IP where the server runs.
