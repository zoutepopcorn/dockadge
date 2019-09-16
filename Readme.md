# What is this?

Test for a docker to flash a esp-32 badge:
https://github.com/badgeteam/ESP32-platform-firmware

## Howto build a image
````shell script
docker build -t dockadge .
````

## Run the container
#### Make this cleaner, this is insecure, but it worked.
````shell script
docker run -it --privileged --name badge-test -d dockadge  
````

## Build / Flash
````shell script
 docker exec -it badge-test bash
````

######  (In the docker container)
You will see
```shell script
root@ec1ab22d9016:/urs/badge/ESP32-platform-firmware# 
```

***
###### From: (https://github.com/badgeteam/ESP32-platform-firmware)

Copy the relevant config file from /firmware/configs/<badge>_defconfig to /firmware/sdkconfig: 
````shell script
cp firmware/configs/sha2017_defconfig firmware/sdkconfig
````
***

Then build and flash

````shell script
./build.sh
./flash.sh
````

## Monitor
````shell script
./monitor.sh
````


## Result:
````shell script
....
Wrote 3072 bytes (142 compressed) at 0x00008000 in 0.0 seconds (effective 8036.7 kbit/s)...
Hash of data verified.

Leaving...
Hard resetting via RTS pin..
````


### TODO: 
* mount data into fs
* use --device=/dev/ttyUSB0 in place of --privileged
[Todo.md](https://github.com/zoutepopcorn/dockadge/projects/2)
