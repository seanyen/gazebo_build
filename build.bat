@echo off

call "setup.bat"

pushd %1
shift
mkdir build & pushd build
cmake %~1 -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=%GAZEBO_INSTALL_PREFIX% -DCMAKE_INSTALL_PREFIX=%GAZEBO_INSTALL_PREFIX% -G "Ninja" ..
ninja install
popd
popd