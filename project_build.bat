docker run --rm -it \
 -v /src:/project \
 pico-builder \
 bash -c 'mkdir -p build && cd build && cmake .. && make blink'
