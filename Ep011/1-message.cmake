message("The sky is blue")
message([=[The sky is blue]=])
message("cmake version is ${CMAKE_VERSION}")


message("The\ sky\ is blue") # 1 argument, the space is escaped
message("The sky is blue") # 4 arguments
message("The;sky;is;blue") # 4 arguments

