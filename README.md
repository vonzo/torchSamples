# torchSamples

Simple code in C++ and python to test torch and pytorch functions

## Run docker shell
First set env:
```
. .env
```

then build the image:
```
build_docker_img
```

then run shell:
```
run_docker_shell
```

## Build sample
1. First run a docker shell
2. `cd` to the sample you want to build, for example:
```
cd /app/samples/print_tensors
```
3. cmake build:
```
mkdir build
cd build
cmake ..
cmake --build .
```