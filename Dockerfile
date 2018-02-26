FROM ubuntu

RUN apt-get update
RUN apt-get install git -y
COPY pintools /pintools
RUN echo "export PATH=$PATH:/pintools" >> ~/.profile
RUN echo "export PATH=$PATH:/pintools" >> ~/.bashrc
RUN echo "export APP=/usr/src/my-app" >> ~/.bashrc
RUN echo "export LD_LIBRARY_PATH=/pintools/source/include/pin/" >> ~/.bashrc
RUN apt-get install make -y
RUN apt-get install g++ -y
WORKDIR /pintools/source/tools/ManualExamples
RUN make
WORKDIR /pintools/source/tools/SimpleExamples
RUN make
WORKDIR /usr/src/my-app
