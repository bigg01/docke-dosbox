# docker-dosbox


Run [DOSBox](https://www.dosbox.com/) in a docker container. 

1. Add your game archives  e.g. from https://dosgames.com/
2. Run `podman build -t bigg01/docker-dosbox .`
3. Start with `podman run -p 8080:8080 ghcr.io/bigg01/docker-dosbox:main` or if you use a volume `podman run -p 8080:8080 -v ./dosgames:/root/dos:z docker pull ghcr.io/bigg01/docker-dosbox:main `
4. Connect via a browser to the novnc host e.g. http://localhost:8080/vnc.html



https://manpages.ubuntu.com/manpages/trusty/man1/dosbox.1.html
