# CMake generated Testfile for 
# Source directory: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/cpp
# Build directory: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/cpp
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(CPP::memq_test "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/cpp/test-cpp-memq_test")
set_tests_properties(CPP::memq_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/cpp/CMakeLists.txt;12;add_test;/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/cpp/CMakeLists.txt;0;")
add_test(CPP::client_server "/opt/homebrew/Frameworks/Python.framework/Versions/3.12/bin/python3.12" "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/cpp/../run_client_server_test.py" "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/c/test-c-server" "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/cpp/test-cpp-client")
set_tests_properties(CPP::client_server PROPERTIES  _BACKTRACE_TRIPLES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/cpp/CMakeLists.txt;15;add_test;/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/cpp/CMakeLists.txt;0;")
