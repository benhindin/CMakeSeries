set(var_1 "var_1")
message(${var_1})

set(one abc)
set(two ${one}de)
set(three ${two} fg)
set(four thre)
set(str_five ${four}e)
set(var_five ${${str_five}})

message(${one})
message(${two})
message(${three})
message(${four})
message(${str_five})
message(${var_five})

set(ENV{ENV_VAR} "C:/Job")
message($ENV{ENV_VAR})

message($ENV{TMP})

set(cache_var "the value" CACHE STRING "a cache variable")
message(${cache_var})

message(${CMAKE_VERSION})
message(${CMAKE_COMMAND})
message(${CMAKE_CURRENT_LIST_FILE})
