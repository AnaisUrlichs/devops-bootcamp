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
docker login

docker push <Dockerhub-ID>/react-example-app:1.0.0
```

In this case, the Dockerhub ID is the ID of the person or entity who is linked to the image that you want to use.
Once it is on the Dockerhub, if the image is public, anyone will be able to pull the image and run it.

If you are new to Docker commands, please refer to the [following overview]().

## CI/CD pipelines

This respository has the pipelines for three different CI/CD tools:
* The first one is GitHub Actions which is within the [.github/workflows](./.github/workflows) respoitory
* The second one is for GitLab CI/CD which you can find in .gitlab-ci.yml and ./gitlab
* The third one is for Codefresh 

The explanation below will focus on the GitHUb Actions pipeline.

In our case, we are going to run the pipeline whenever we push to the main branch. However, we could also trigger our pipeline when we are creating a merge request. You can find more information in the GitHub [docs](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions).

The pipeline requieres several secrets that are set in the GitHub UI under Settings > Secrets > and then select "New Repository Secret"