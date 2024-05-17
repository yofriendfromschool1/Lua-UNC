-- creds to vxsty
local keys = {
	[8] = Enum.KeyCode.Backspace,
	[9] = Enum.KeyCode.Tab,
	[12] = Enum.KeyCode.Clear,
	[13] = Enum.KeyCode.Return,
	[16] = Enum.KeyCode.LeftShift,
	[17] = Enum.KeyCode.LeftControl,
	[18] = Enum.KeyCode.LeftAlt,
	[19] = Enum.KeyCode.Pause,
	[20] = Enum.KeyCode.CapsLock,
	[27] = Enum.KeyCode.Escape,
	[32] = Enum.KeyCode.Space,
	[33] = Enum.KeyCode.PageUp,
	[34] = Enum.KeyCode.PageDown,
	[35] = Enum.KeyCode.End,
	[36] = Enum.KeyCode.Home,
	[45] = Enum.KeyCode.Insert,
	[46] = Enum.KeyCode.Delete,
	[48] = Enum.KeyCode.Zero,
	[49] = Enum.KeyCode.One,
	[50] = Enum.KeyCode.Two,
	[51] = Enum.KeyCode.Three,
	[52] = Enum.KeyCode.Four,
	[53] = Enum.KeyCode.Five,
	[54] = Enum.KeyCode.Six,
	[55] = Enum.KeyCode.Seven,
	[56] = Enum.KeyCode.Eight,
	[57] = Enum.KeyCode.Nine,
	[65] = Enum.KeyCode.A,
	[66] = Enum.KeyCode.B,
	[67] = Enum.KeyCode.C,
	[68] = Enum.KeyCode.D,
	[69] = Enum.KeyCode.E,
	[70] = Enum.KeyCode.F,
	[71] = Enum.KeyCode.G,
	[72] = Enum.KeyCode.H,
	[73] = Enum.KeyCode.I,
	[74] = Enum.KeyCode.J,
	[75] = Enum.KeyCode.K,
	[76] = Enum.KeyCode.L,
	[77] = Enum.KeyCode.M,
	[78] = Enum.KeyCode.N,
	[79] = Enum.KeyCode.O,
	[80] = Enum.KeyCode.P,
	[81] = Enum.KeyCode.Q,
	[82] = Enum.KeyCode.R,
	[83] = Enum.KeyCode.S,
	[84] = Enum.KeyCode.T,
	[85] = Enum.KeyCode.U,
	[86] = Enum.KeyCode.V,
	[87] = Enum.KeyCode.W,
	[88] = Enum.KeyCode.X,
	[89] = Enum.KeyCode.Y,
	[90] = Enum.KeyCode.Z,
	[93] = Enum.KeyCode.Menu,
	[96] = Enum.KeyCode.KeypadZero,
	[97] = Enum.KeyCode.KeypadOne,
	[98] = Enum.KeyCode.KeypadTwo,
	[99] = Enum.KeyCode.KeypadThree,
	[100] = Enum.KeyCode.KeypadFour,
	[101] = Enum.KeyCode.KeypadFive,
	[102] = Enum.KeyCode.KeypadSix,
	[103] = Enum.KeyCode.KeypadSeven,
	[104] = Enum.KeyCode.KeypadEight,
	[105] = Enum.KeyCode.KeypadNine,
	[106] = Enum.KeyCode.KeypadMultiply,
	[107] = Enum.KeyCode.KeypadPlus,
	[109] = Enum.KeyCode.KeypadMinus,
	[110] = Enum.KeyCode.KeypadPeriod,
	[111] = Enum.KeyCode.KeypadDivide,
	[112] = Enum.KeyCode.F1,
	[113] = Enum.KeyCode.F2,
	[114] = Enum.KeyCode.F3,
	[115] = Enum.KeyCode.F4,
	[116] = Enum.KeyCode.F5,
	[117] = Enum.KeyCode.F6,
	[118] = Enum.KeyCode.F7,
	[119] = Enum.KeyCode.F8,
	[120] = Enum.KeyCode.F9,
	[121] = Enum.KeyCode.F10,
	[122] = Enum.KeyCode.F11,
	[123] = Enum.KeyCode.F12,
	[144] = Enum.KeyCode.NumLock,
	[145] = Enum.KeyCode.ScrollLock,
	[186] = Enum.KeyCode.Semicolon,
	[187] = Enum.KeyCode.Equals,
	[188] = Enum.KeyCode.Comma,
	[189] = Enum.KeyCode.Minus,
	[190] = Enum.KeyCode.Period,
	[191] = Enum.KeyCode.Slash,
	[192] = Enum.KeyCode.Backquote,
	[219] = Enum.KeyCode.LeftBracket,
	[221] = Enum.KeyCode.RightBracket,
	[222] = Enum.KeyCode.Quote
}
getgenv().keyclick = function(key)
    local vim = game:GetService('VirtualInputManager');
	if not keys[key] then
		return error("Key " .. tostring(key) .. ' not found!')
	end
	vim:SendKeyEvent(true, keys[key], false, game)
	task.wait()
	vim:SendKeyEvent(false, keys[key], false, game)
end
getgenv().keypress = function(key)
    local vim = game:GetService('VirtualInputManager');
	if not keys[key] then
		return error("Key " .. tostring(key) .. ' not found!')
	end
	vim:SendKeyEvent(true, keys[key], false, game)
end
getgenv().keyrelease = function(key)
    local vim = game:GetService('VirtualInputManager');
	if not keys[key] then
		return error("Key " .. tostring(key) .. ' not found!')
	end
	vim:SendKeyEvent(false, keys[key], false, game)
end
