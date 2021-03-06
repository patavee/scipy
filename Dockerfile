
# pull base image
FROM patavee/numpy
MAINTAINER Patavee Charnvivit <patavee@gmail.com>

# install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    libatlas-base-dev \
    gfortran && \
    rm -rf /var/lib/apt/lists/*
    
# install scipy
RUN pip install scipy
