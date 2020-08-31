[![proferori](https://circleci.com/gh/profesori/project-ml-microservice-kubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/profesori/project-ml-microservice-kubernetes)

## Project Overview

This repo contains a containerized microservice in Python to predict house pricings with a a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. Here the datasource for the training [the data source site](https://www.kaggle.com/c/boston-housing).

app.py : base file which handles the computation of the predicted price.

Here are the steps of building the service : 
---

## Setup the Environment

* Create a virtualenv and activate it :

``` 
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```

* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh && ./make_prediction.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh && ./make_prediction.sh`

