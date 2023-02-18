# docker-dosbox


Run [DOSBox](https://www.dosbox.com/) in a docker container. 

1. Add your game archives  e.g. from https://dosgames.com/
2. Run `podman build -t bigg01/dosbox .`
3. Start with `podman run -p 8080:8080 dosbox` or if you use a volume `podman run -p 8080:8080 -v /local/games:/root/dos dosbox`
4. Connect via a browser to the novnc host e.g. http://localhost:8080
