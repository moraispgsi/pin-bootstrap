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
