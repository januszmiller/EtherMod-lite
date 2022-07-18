docker run --rm -it -v %cd%\src:/project pico-builder bash -c "mkdir -p build && cd build && cmake .. && make blink"
