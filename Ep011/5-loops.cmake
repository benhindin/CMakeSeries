set(names "ben" "hindin")
foreach(name ${names})
    message("name is ${name}")
endforeach ()

list(LENGTH names num_names)
set(counter 0)
message("counter is ${counter}")
message("num_names is ${num_names}")

while(counter LESS num_names)
    list(GET names ${counter} str)
    message("str of index ${counter} is ${str}")

    math(EXPR counter "${counter} + 1")
endwhile ()

foreach(loop_var RANGE 1)
    message("loop_var = ") #${loop_var}")
endforeach ()