# docker-minimal
This is a sample project demonstrating how to make a Docker image as small as possible. 
It uses an image called `scratch` as its base, which is essentially empty. This means
that you will need to copy in everything your application needs to run. This implies
a statically-linked binary, though you could copy in any required libraries instead.

The "app" in this image is just a simple [Go](http://golang.org) web server that
listed on port 8080, and serves up a cooked string response. There's not much to it.

## Prerequisites
You will need the Go compiler installed, with cross-compiling ability. If you build from
sources, the documentation tells you how to do this. If you are on a Mac and install from
[Homebrew](http://brew.sh/), then you can do this for a new install

```bash
brew install go --cross-compile-all
```

or this, if you already have it installed

```bash
brew reinstall go --cross-compile-all
```

## Building
There is a script called `build` that will compile the Go binary, and then build the
Docker container for you. When it is complete, running `docker images` should show
you something like this

```
REPOSITORY                       TAG                 IMAGE ID            CREATED             VIRTUAL SIZE

hw                               latest              0c4868591440        6 minutes ago       5.827 MB
```

## Running
There is a script called `run` that will run the image, mapping port 8080 to port 8080. If you are
using `boot2docker`, remember that the IP address you point your browser to will be boot2docker's, and
not localhost. You can obtain the correct IP by executing

```bash
boot2docker ip
```

In your browser, go to $IP:8080, and you should see the inspiring message:
"Hello World from Go in minimal Docker container".

