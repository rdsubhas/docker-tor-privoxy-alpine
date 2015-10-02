# tor-privoxy-alpine

The smallest (**15 MB**) docker image with Tor and Privoxy on Alpine Linux.

```
docker pull tor-privoxy-alpine
docker run -d -p 8118:8118 --name torx tor-privoxy-alpine
curl --proxy localhost:8118 https://www.google.com
```

And that's it!

## Known Issues

* When running in interactive mode, pressing Ctrl+C doesn't cleanly exit. For now, run it in detached mode (`-d`). Calling `docker stop` cleanly exits though.
* We're using `testing` versions of tor and runit in Alpine. Got to keep an eye on future builds, until those packages reach `main` in Alpine.
