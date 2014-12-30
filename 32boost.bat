SET PATH=%~dp0\mingw32\bin
cd %~dp0\MinGW\msys\1.0\home\xawksow\deps\boost_1_57_0
call bootstrap.bat mingw
call b2 --build-type=complete --with-chrono --with-filesystem --with-program_options --with-system --with-thread toolset=gcc variant=release link=static threading=multi runtime-link=static stage