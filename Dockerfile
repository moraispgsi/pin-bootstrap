FROM ubuntu

RUN apt-get update
RUN apt-get install git -y
COPY pintools /pintools
RUN echo "export PATH=$PATH:/pintools" >> ~/.profile
RUN echo "export PATH=$PATH:/pintools" >> ~/.bashrc
WORKDIR /usr/src/my-app
