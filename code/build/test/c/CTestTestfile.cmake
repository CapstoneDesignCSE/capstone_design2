# CMake generated Testfile for 
# Source directory: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/c
# Build directory: /Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/c
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(C::memq_test "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/c/test-c-memq_test")
set_tests_properties(C::memq_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/c/CMakeLists.txt;18;add_test;/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/c/CMakeLists.txt;0;")
add_test(C::eventlog_test "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/c/test-c-eventlog_test")
set_tests_properties(C::eventlog_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/c/CMakeLists.txt;19;add_test;/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/c/CMakeLists.txt;0;")
add_test(C::client_server "/opt/homebrew/Frameworks/Python.framework/Versions/3.12/bin/python3.12" "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/c/../run_client_server_test.py" "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/c/test-c-server" "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/build/test/c/test-c-client")
set_tests_properties(C::client_server PROPERTIES  _BACKTRACE_TRIPLES "/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/c/CMakeLists.txt;22;add_test;/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/Server/lcm-1.5.0/test/c/CMakeLists.txt;0;")
