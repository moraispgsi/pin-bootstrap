FROM ubuntu

RUN apt-get update
RUN apt-get install git -y
COPY pintools /pintools
RUN echo "export PATH=$PATH:/pintools" >> ~/.profile
RUN echo "export PATH=$PATH:/pintools" >> ~/.bashrc
RUN apt-get install make
RUN apt-get install g++
WORKDIR /pintools/source/tools/ManualExamples
RUN make
WORKDIR /pintools/source/tools/SimpleExamples
RUN make
WORKDIR /usr/src/my-app
