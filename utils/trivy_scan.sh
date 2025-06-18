#!/bin/bash

IMAGE=$1
trivy image $IMAGE
