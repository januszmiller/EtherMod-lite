rd /s /q %cd%\project\build
docker run --rm -it -v %cd%\project:/project pico-builder bash -c "mkdir -p build && cd build && cmake .. && make main"
