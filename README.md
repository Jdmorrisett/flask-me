# Flask-Me
This is a quick flask app about me. It contains my resume and some additional information. It will soon have some of my projects as well.

## Architecture
[![Terraform Actions on PR](https://github.com/Jdmorrisett/flask-me/actions/workflows/pr-open.yml/badge.svg?branch=main)](https://github.com/Jdmorrisett/flask-me/actions/workflows/pr-open.yml)
[![Build and Deploy to Cloud Run](https://github.com/Jdmorrisett/flask-me/actions/workflows/deploy-to-gcp-run.yml/badge.svg?branch=main)](https://github.com/Jdmorrisett/flask-me/actions/workflows/deploy-to-gcp-run.yml)
This is a flask app, running in a linux-based docker container. The image is built and deployed to Google Cloud Run via a CD Pipeline (Github Actions Workflow) in the repo. The trigger for the build is a successful merge to the `main` branch

## Roadmap
* API
* Login
* Scheduler
* Testing and CI