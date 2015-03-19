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
docker run -i -t -p 6080:6080 -p 3389:3389 sidirius/docker-ubuntu-xrdp-desktop
```

Browse http://127.0.0.1:6080/vnc.html or RDP 127.0.0.1

<img src="https://raw.github.com/fcwu/docker-ubuntu-vnc-desktop/master/screenshots/lxde.png" width=400/>
