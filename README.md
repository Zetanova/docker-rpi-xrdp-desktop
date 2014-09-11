docker-ubuntu-xrdp-desktop
=========================

From Docker Hub
```
docker pull philipz/ubuntu-desktop-lxde-vnc
```

Build yourself
```
git clone https://github.com/philipz/docker-ubuntu-xrdp-desktop.git
docker build -t philipz/ubuntu-desktop-lxde-vnc . 
```

Run
```
docker run -i -t -p 6080:6080 -p 3389:3389 philipz/ubuntu-desktop-xrdp-vnc
```

Browse http://127.0.0.1:6080/vnc.html or RDP 127.0.0.1

<img src="https://raw.github.com/fcwu/docker-ubuntu-vnc-desktop/master/screenshots/lxde.png" width=400/>
