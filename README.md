# Docker SDK

This Dockerfile provides a Debian machine with a working installation of the
KnightOS SDK installed.

## Usage

    docker build -t knightos .

or:

    docker pull knightos/KnightOS

Then:

    docker run -ti knightos
    $ knightos --help
