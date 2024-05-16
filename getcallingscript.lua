-- vxsty made this
getgenv().getcallingscript = function()
 local s = debug.info(1, 's')
 for i, v in next, game:GetDescendants() do
  if v:GetFullName() == s then return v end
 end
 return nil
end
