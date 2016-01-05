# docker-gc
A cron version of [spotify's GC](https://hub.docker.com/r/spotify/docker-gc/)

Run using:

    $ docker run -dit -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc jamescookie/docker-gc

The `/etc` directory is also mapped so that it can read any exclude files (but that is optional)

This will run the garbage collection straight away and then hourly from then on
