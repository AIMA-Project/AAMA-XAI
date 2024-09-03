# AI-Assisted Malware Analysis Lab:  e**X**plainable **A**rtificial **I**ntelligence (XAI)

## Preinstallation
This lab requires Docker to be installed on the machine running it. Instructions for installing Docker on various
platforms can be found on their website:
- [Windows](https://docs.docker.com/desktop/install/windows-install/)
- [Mac](https://docs.docker.com/desktop/install/mac-install/)
- [Linux](https://docs.docker.com/desktop/install/linux-install/)

Docker Desktop is not needed so long as the command line tools are installed. However, it may be useful to have a GUI
to Docker for managing containers and images.

Once Docker is installed, the lab image can either be downloaded from Docker Hub or built from the repository's files.
See the below section for more information.


## Building Lab Images
**It is important to note that Linux users will have to run Docker commands as root or using the `sudo` command!**

A pre-built image is availabe on [Docker Hub](https://hub.docker.com/r/abcyslab/aama-xai) if you wish to skip the
building process. This image is automatically built, so it stays up to date with the repository. A set of directions is
provided by Docker Hub to pull and run the image.

Building the image requires Docker to be installed and running on the user's computer. These instructions are
applicable to both Windows and Linux operating systems. To assist with building, "docker_setup.ps1" (Windows) and
"docker_setup.sh" (Linux) have be provided to automatically build and run the lab container.


## Running the XAI Lab
This lab utilizes a [Jupyter notebook](https://jupyter-notebook.readthedocs.io/en/latest/notebook.html) that is accessible
from a web browser. Upon running the Docker container for the first time, a URL associated with a port running on the
localhost will be provided. Following this will be the string of text "/tree?token=". The characters that follow this
make up the token that is used to login to the container's webpage. If you plan on accessing the container in the
future, it is recommended to save this token.

Once connected to the notebook's webpage, select "xai_lab.ipynb" and then click the "Open" button. This will load
the lab, which can now be ran from the web browser.


## Future Access
Accessing Docker can vary depending on the IDE and operating system you use. Visual Studio Code has a number of plugins
that make accessing a Docker container fairly straightforward.

Without any plugins or GUI, accessing an already existing container requires first starting it in the background, then
attaching a terminal session to it.

```
$ docker start xai
$ docker attach xai
```


## Deleting Containers
Running a new container under the name "xai" requires deletion of the old one. This can be done by simply deleting the
container using Docker's command line tools.

```
$ docker container rm xai
```

After this, the `docker run` command provided as part of the lab's scripting can be ran again to generate a fresh
container instance.
