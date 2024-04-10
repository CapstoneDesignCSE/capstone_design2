# CMake generated Testfile for 
# Source directory: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/lua
# Build directory: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/lua
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Lua::client_server "/opt/homebrew/Cellar/cmake/3.29.1/bin/cmake" "-E" "env" "LUA_PATH=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/types/?.lua;/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/types/?/init.lua" "LUA_CPATH=/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/lcm-lua/lcm.so" "/opt/homebrew/Frameworks/Python.framework/Versions/3.12/bin/python3.12" "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/lua/../run_client_server_test.py" "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/c/test-c-server" "/opt/homebrew/bin/lua" "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/lua/client.lua")
set_tests_properties(Lua::client_server PROPERTIES  _BACKTRACE_TRIPLES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/lua/CMakeLists.txt;8;add_test;/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/lua/CMakeLists.txt;0;")
