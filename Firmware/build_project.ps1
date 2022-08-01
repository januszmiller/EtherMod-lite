if (-Not (docker images -q pico-builder)) {docker build -t pico-builder .}
Remove-Item $pwd\project\build -Recurse
docker run --rm -it -v $pwd\project:/project pico-builder bash -c "mkdir -p build && cd build && cmake .. && make main"
