# Rundeck

Playground for testing out [rundeck](https://www.rundeck.com/)

## Local Dev
The project is setup with a `docker-compose.yaml` and `Makefile` to make working with rundeck easy.

To start the server, create a `.env` file using `example.env`, from the command line run `make up`, and access the UI at http://localhost:4440

Default login details:

    username: admin
    password: admin

*Note that you may need to refresh the login screen after initial attempt*

## Setup

### Docker registry
Docker images are store with [Github Packages](https://docs.github.com/en/packages/learn-github-packages/introduction-to-github-packages) for [docker](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry).
