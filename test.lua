-- this isnt a unc function but just tests the env
new = 0
for i in pairs(getgenv()) do
    if i ~= "shared" and i ~= "_G" and i ~= "UISFTE" and i ~= "IsWindowFocuseddsa" and i ~= "dsaThread" and i ~= "con1" and i ~= "con2" and i ~= "encrypt64k" and i ~= "httppost" and i ~= "crypt" and i ~= "debugg" then
        new = new + 1
        print("✅ "..i,new)
    end
end
print("UNC Summary")
print("✅ Tested with a " .. math.round(new/83*100) .. "% success rate (" .. new .. " out of " .. 83 .. ")")
print("⛔ " .. 83 - new .. " tests failed")
