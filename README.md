## Project Overview

This project is a simple react application that will run a UI to scrape articles from Hackernews.

Additionally, this repository has a Dockerfile.

The Dockerfile is used to create a container image of our application.

**Build container image**

```
docker build -t <Dockerhub-ID>/react-example-app:1.0.0 .
```

You can find your Dockerhub-ID on the [DockerHub](https://hub.docker.com/).

**Run container image**

```
docker run -p 8080:80 anaisurlichs/react-example-app:1.0.0
```

**Push the container image to the Dockerhub**
```

```

Once it is on the Dockerhub, if the image is public, anyone will be able to pull the image and run it.

If you are new to Docker commands, please refer to the [following overview]().


