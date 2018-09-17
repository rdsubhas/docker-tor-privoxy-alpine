# tor-privoxy-alpine

The smallest (**15 MB**) docker image with Tor and Privoxy on Alpine Linux.

```
docker run -d -p 8118:8118 -p 9050:9050 rdsubhas/tor-privoxy-alpine
curl --no-buffer --proxy localhost:8118 https://check.torproject.org | grep "Congratulations. This browser is configured to use Tor."
```

And that's it! Read the accompanying [blog post](https://medium.com/@rdsubhas/docker-image-with-tor-privoxy-and-a-process-manager-under-15-mb-c9e344111b61) for more details.

## Known Issues

* When running in interactive mode, pressing Ctrl+C doesn't cleanly exit. For now, run it in detached mode (`-d`). Calling `docker stop` cleanly exits though.
* We're using `testing` versions of tor and runit in Alpine. Got to keep an eye on future builds, until those packages reach `main` in Alpine.

## Other interesting projects

* [s6 supervision suite](http://skarnet.org/software/s6/index.html), similar to runit and daemontools
* [s6-overlay](https://github.com/just-containers/s6-overlay), base container with s6 and alpine
* [docker-slim](https://github.com/cloudimmunity/docker-slim), a tool to automatically analyze and trim existing fat containers
