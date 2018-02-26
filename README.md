# Pin Environment

## Usage
Running the container with a mounted volume on current folder:
```
$ docker build -t pin github.com/moraispgsi/pin-bootstrap && docker run --privileged --rm -it -v "$(pwd):/usr/src/my-app" pin bash
```


Its recommended to use only the src folder
```
$ cd src
```

Running a pin-tool:
```
$ pin -t <tool-name> -- <program>
```

Example:
```
$ pin -t inscount0.so -- /bin/ls
```

The output will be in inscount.out


# Run examples of pintools and copy their result and source code to the host directory


	pin -t /pintools/source/tools/ManualExamples/inscount0.so -- /bin/ls
	cp inscount.out $APP
	cp /pintools/source/tools/ManualExamples/inscount0.cpp $APP
	
	
	pin -t /pintools/source/tools/ManualExamples/itrace.so -- /bin/ls
	cp itrace.out $APP
	cp /pintools/source/tools/ManualExamples/itrace.cpp $APP
	
	
	pin -t /pintools/source/tools/ManualExamples/pinatrace.so -- /bin/ls
	cp pinatrace.out $APP
	cp /pintools/source/tools/ManualExamples/pinatrace.cpp $APP
	
	
	pin -t /pintools/source/tools/SimpleExamples/obj-intel64/opcodemix.so -- /bin/ls
	cp opcodemix.out $APP
	cp /pintools/source/tools/SimpleExamples/opcodemix.cpp $APP
	
	
	pin -t /pintools/source/tools/SimpleExamples/obj-intel64/regmix.so -- /bin/ls
	cp regmix.out $APP
	cp /pintools/source/tools/SimpleExamples/regmix.cpp $APP
	
	
	pin -t /pintools/source/tools/ManualExamples/inscount1.so -- /bin/ls
	cp inscount.out $APP
	cp /pintools/source/tools/ManualExamples/inscount1.cpp $APP
	
	
	(nao estava a funcionar com /bin/ls)
	pin -t /pintools/source/tools/SimpleExamples/obj-intel64/edgcnt.so -- /bin/pwd 
	cp edgcnt.out $APP
	cp /pintools/source/tools/SimpleExamples/edgcnt.cpp $APP
	
	
	pin -t /pintools/source/tools/ManualExamples/obj-intel64/proccount.so -- /bin/ls
	cp proccount.out $APP
	cp /pintools/source/tools/ManualExamples/proccount.cpp $APP

	
	pin -t /pintools/source/tools/SimpleExamples/obj-intel64/imageload.so -- /bin/ls
	cp imageload.out $APP
	cp /pintools/source/tools/SimpleExamples/imageload.cpp $APP
