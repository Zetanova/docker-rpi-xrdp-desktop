docker-rpi-xrdp-desktop
=========================

This is a docker app, which should be run on a Raspberry Pi.
I've tested it on a Raspberry Pi 2 Model B.

#How to use

The script makes a Raspbian clone and makes user *pi* with password *raspberry*.
These credentials are fully customizable in the Dockerfile.
After it's set up, you only have to write the Raspis ip-address [or hostname eventually] in the Remote Desktop field

#How to build yourself

```
# Download this work
git clone https://github.com/luxas/docker-rpi-xrdp-desktop.git

# Change to that directory
cd docker-rpi-xrdp-desktop

# And build a working image, from our current working directory´s Dockerfile
docker build -t luxas/docker-rpi-xrdp-desktop . 
```

#Run on your Raspberry Pi

```
# Make this run on your RPi, after this, you can RDP in to it
docker run -dt --name rpi_desktop -p 3389:3389 luxas/docker-rpi-xrdp-desktop
```

Note: there aren't that much software included by default, but feel free to fork this project customize it as you want.