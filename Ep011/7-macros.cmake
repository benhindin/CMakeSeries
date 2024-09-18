macro(ModifyGlobalVariables var1 var2)
    set(${var1} "new var1 value")
    set(${var2} "new var2 value")
endmacro()

set(var1 "org var1 value")
set(var2 "org var2 value")

message("var1=${var1}, var2=${var2}")
ModifyGlobalVariables(var1 var2)
message("var1=${var1}, var2=${var2}")

macro(increment var)
    math(EXPR ${var} "${${var}} + 1")
#    set(${var} ${${var}} PARENT_SCOPE)
endmacro()

set(var3 0)
message("var3=${var3}")
increment(var3)
message("var3=${var3}")
increment(var3)
message("var3=${var3}")