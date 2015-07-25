# florianloch/mumble

This is an enhanced fork of [luzifer/mumble](https://registry.hub.docker.com/u/luzifer/mumble/dockerfile/).

It provides support for setting ```SuperUser```password via environment variable ```MUMBLE_SUPW```. Furthermore it enables you to mount a custom mumble configuration via volume ```/config```. The script checks whether there is file named ```muble-server.ini``` - in case it isn't it copies over its default configuration which might be modified afterwards. Volume ```/data``` is used for storing mumbles sqlite database and should be mounted when persistence is needed.

## Usage
1. `docker pull florianloch/mumble`
2. `docker run -e "MUMBLE_SUPW=<YOUR SECRET PASSWORD>" -v "/some/directory:/data" -v "/some/other/directory:/config" -p 64738:64738/tcp -p 64738:64738/udp -d florianloch/mumble:latest`
(Strip `-d`if you do not want to run the container as daemon. Both volumes should NOT point to the same one on the host)

## Need help?
In case you need help or find bugs with this container please open a issue at the [GitHub repo](https://github.com/FlorianLoch/mumble).
