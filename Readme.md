# What is this?

Test for a docker to flash a esp-32 badge:
https://github.com/badgeteam/ESP32-platform-firmware

# Howto
````sh
docker build -t dockadge .
````

### Sorry, make this cleaner, this is insecure, but it worked.
````sh
docker run -it --privileged --name badje2 -d badgje  
````

