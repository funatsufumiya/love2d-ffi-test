local ffi = require "ffi"
local lib = ffi.load("hello")

ffi.cdef[[
int add(int, int);
]]

return lib