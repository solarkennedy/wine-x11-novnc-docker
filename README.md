## wine-x11-novnc-docker

Not a very good name, is it.

Ever wanted to containerize your wine applications and access them via
a web browser? No? Neither did I!

## Run It

    docker run -p 8080:8080 solarkennedy/wine-x11-novnc-docker
    xdg-open http://localhost:8080

In your web browser you should see the default application, explorer.exe:

![Explorer Screenshot](https://raw.githubusercontent.com/solarkennedy/wine-x11-novnc-docker/master/screenshot.png)

## Modifying

This is a base image. You should fork or use this base image to run your own
wine programs?

## Issues

* Wine could be optimized a bit
* Fluxbox could be skinned or reduced
