# tor-privoxy-alpine

The smallest (**15 MB**) docker image with Tor and Privoxy on Alpine Linux.

```
docker run -d -p 8118:8118 -p 9050:9050 rdsubhas/tor-privoxy-alpine
curl --proxy localhost:8118 https://www.google.com
```

And that's it! Read the accompanying [blog post](https://medium.com/@rdsubhas/docker-image-with-tor-privoxy-and-a-process-manager-under-15-mb-c9e344111b61) for more details.

## Known Issues

* When running in interactive mode, pressing Ctrl+C doesn't cleanly exit. For now, run it in detached mode (`-d`). Calling `docker stop` cleanly exits though.
* We're using `testing` versions of tor and runit in Alpine. Got to keep an eye on future builds, until those packages reach `main` in Alpine.

## Browser check

Since not all browsers are equal and some require extra steps to be anonymous, you may run some checks for your browser once you're set up:

 * https://anonymous-proxy-servers.net/en/help/security_test.html
 * http://fingerprint.pet-portal.eu/
 * https://panopticlick.eff.org/
 * http://ip.cc/anonymity-test.php

## Other interesting projects

* [s6 supervision suite](http://skarnet.org/software/s6/index.html), similar to runit and daemontools
* [s6-overlay](https://github.com/just-containers/s6-overlay), base container with s6 and alpine
* [docker-slim](https://github.com/cloudimmunity/docker-slim), a tool to automatically analyze and trim existing fat containers
