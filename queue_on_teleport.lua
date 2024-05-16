-- must have write file
-- put in auto exec
if not isfolder("queue") then
    makefolder("queue")
end
local rs = math.random(1,999999)
getgenv().queue_on_teleport = function(code)
    writefile("queue\\"..tostring(rs)..".lua", code)
end
--queue_on_teleport("testy")
local files = listfiles("queue")
if #files == 0 then
    return
end
for i, v in pairs(files) do
    pcall(function()
        loadstring(readfile(v))()
    end)
    delfile(v)
end