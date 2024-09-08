set(STUDENTS1 a b c)
set(students2 a;b;c)
set(students3 "a b c") #one argument

message(${STUDENTS1})
message(${students2})
message(${students3})

list(LENGTH STUDENTS1 STUDENTS1_LENGTH)
message("STUDENTS1 has ${STUDENTS1_LENGTH} items")

list(APPEND STUDENTS1 d)
list(LENGTH STUDENTS1 STUDENTS1_LENGTH)
message("STUDENTS1 has ${STUDENTS1_LENGTH} items")

list(GET STUDENTS1 2 INDEX_TWO)
message(${INDEX_TWO})

option(OPT_VAR "option variable" ON)
message("OPT_VAR = ${OPT_VAR}")
if(OPT_VAR)
    message("optimizing...")
endif()