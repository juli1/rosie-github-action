# Java container image to run our static analyzer
FROM amazoncorretto:17

# Install dependencies
RUN curl -sL https://rpm.nodesource.com/setup_17.x | bash -
RUN yum -y update
RUN yum -y install unzip

# Copy files from our repository location to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# The code file to execute when the docker container run
ENTRYPOINT [ "/entrypoint.sh" ]
