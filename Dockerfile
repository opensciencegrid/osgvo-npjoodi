FROM opensciencegrid/osgvo-ubuntu-xenial

RUN apt-get update -y && \
    apt-get install -y \
        python3 \
        python3-dev \
        python3-pip \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip setuptools && \
    pip3 install --upgrade numpy scipy pandas

# build info
RUN echo "Timestamp:" `date --utc` | tee /image-build-info.txt

