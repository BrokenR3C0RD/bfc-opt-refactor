-- opt-bfc output
local t = {}
for i = 1, 65536, 1 do
    t[i] = 0
end

local p = 1
t[p] = t[p] + 10
t[p + 1] = t[p + 1] + t[p] * 7
t[p + 2] = t[p + 2] + t[p] * 10
t[p + 3] = t[p + 3] + t[p] * 3
t[p + 4] = t[p + 4] + t[p]
t[p] = 0
p = p + 1
t[p] = t[p] + 2
io.write(string.char(t[p]))
p = p + 1
t[p] = t[p] + 1
io.write(string.char(t[p]))
t[p] = t[p] + 7
io.write(string.char(t[p]))
io.write(string.char(t[p]))
t[p] = t[p] + 3
io.write(string.char(t[p]))
p = p + 1
t[p] = t[p] + 2
io.write(string.char(t[p]))
p = p - 2
t[p] = t[p] + 15
io.write(string.char(t[p]))
p = p + 1
io.write(string.char(t[p]))
t[p] = t[p] + 3
io.write(string.char(t[p]))
t[p] = t[p] - 6
io.write(string.char(t[p]))
t[p] = t[p] - 8
io.write(string.char(t[p]))
p = p + 1
t[p] = t[p] + 1
io.write(string.char(t[p]))
p = p + 1
io.write(string.char(t[p]));
