docker-ubuntu-xrdp-desktop
=========================

From Docker Hub
```
docker pull sidirius/docker-ubuntu-xrdp-desktop
```

Build yourself
```
git clone https://github.com/sidirius/docker-ubuntu-xrdp-desktop.git
docker build -t sidirius/docker-ubuntu-xrdp-desktop . 
```

Run
```
docker run -dt --name lxde_xrdp -p 3389:3389 sidirius/docker-ubuntu-xrdp-desktop
```

