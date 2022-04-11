
clear() --clear the console from last run

local keyboardIdentifier = '399C2A34'
lmc_device_set_name('MACROS', keyboardIdentifier);
--This lists connected keyboards
dev = lmc_get_devices()

lmc.minimizeToTray = true
lmc_minimize()


--Made F13-F16 free for some free powerful keys
local config = {
	[45]  = "insert",
	[36]  = "home",
	[33]  = "pageup",
	[46]  = "delete",
	[35]  = "end",
	[34]  = "pagedown",
	[27]  = "escape",
	[112] = "F1",
	[113] = "F2",
	[114] = "F3",
	[115] = "F4",
	[116] = "F5",
	[117] = "F6",
	[118] = "F7",
	[119] = "F8",
	[120] = "F9",
	[121] = "F10",
	[122] = "F11",
	[123] = "F12",
	[8]   = "backspace",
	[220] = "backslash",
	[13]  = "enter",
	[17]  = "rCtrl",
	[38]  = "up",
	[37]  = "left",
	[40]  = "down",
	[39]  = "right",
	[32]  = "space",
	[186] = "semicolon",
	[222] = "singlequote",
	[190] = "period",
	[191] = "slash",
	[188] = "comma",
	[219] = "leftbracket",
	[221] = "rightbracket",
	[189] = "minus",
	[187] = "equals",
	[96]  = "num0",
	[97]  = "num1",
	[98]  = "num2",
	[99]  = "num3",
	[100] = "num4",
	[101] = "num5",
	[102] = "num6",
	[103] = "num7",
	[104] = "num8",
	[105] = "num9",

	[106] = "numMult",
    [107] = "numPlus",
    [108] = "numEnter", --sometimes this is different, check your keyboard
	[109] = "numMinus",
    [110] = "numDelete",
	[111] = "numDiv",
    [144] = "numLock", --probably it is best to avoid this key. I keep numlock ON, or it has unexpected effects

    [192] = "`",  --this is the tilde key just before the number row
    [9]   = "tab",
    [20]  = "capslock",
				[18]  = "alt",
				[16]  = "rShift",
				[17]  = "rCtrl",
    



	[string.byte('Q')] = "q",
	[string.byte('W')] = "w",
	[string.byte('E')] = "e",
	[string.byte('R')] = "r",
	[string.byte('T')] = "t",
	[string.byte('Y')] = "y",
	[string.byte('U')] = "u",
	[string.byte('I')] = "i",
	[string.byte('O')] = "o",
	[string.byte('P')] = "p",
	[string.byte('A')] = "a",
	[string.byte('S')] = "s",
	[string.byte('D')] = "d",
	[string.byte('F')] = "f",
	[string.byte('G')] = "g",
	[string.byte('H')] = "h",
	[string.byte('J')] = "j",
	[string.byte('K')] = "k",
	[string.byte('L')] = "l",
	[string.byte('Z')] = "z",
	[string.byte('X')] = "x",
	[string.byte('C')] = "c",
	[string.byte('V')] = "v",
	[string.byte('B')] = "b",
	[string.byte('N')] = "n",
	[string.byte('M')] = "m",

    [string.byte('0')] = "0",
	[string.byte('1')] = "1",
	[string.byte('2')] = "2",
	[string.byte('3')] = "3",
	[string.byte('4')] = "4",
	[string.byte('5')] = "5",
    [string.byte('6')] = "6",
    [string.byte('7')] = "7",
    [string.byte('8')] = "8",
    [string.byte('9')] = "9",

	--[255] = "printscreen" --these keys do not work
}

--Start Script
lmc_set_handler('MACROS',function(button,direction)
if (direction ==1)then return end -- ignore down

----1st using F13 to F24 without modifiers
if (button == 27) then lmc_send_keys('^>+>{F23}')--ESC
elseif (button == 112) then lmc_send_keys('{F18}')--F1
elseif (button == 113) then lmc_send_keys('{F19}')--F2
elseif (button == 114) then lmc_send_keys('{F20}')--F3
elseif (button == 115) then lmc_send_keys('{F21}')--F4
elseif (button == 116) then lmc_send_keys('{F22}')--F5
elseif (button == 117) then lmc_send_keys('{F23}')--F6
elseif (button == 118) then lmc_send_keys('{F17}')--F7
elseif (button == 119) then lmc_send_keys('^>{F13}')--F8
elseif (button == 120) then lmc_send_keys('^>{F14}')--F9
elseif (button == 121) then lmc_send_keys('^>{F15}')--F10
elseif (button == 122) then lmc_send_keys('^>{F16}')--F11

----2nd using F13 to F24 with modifier Right Control
elseif (button == 123) then lmc_send_keys('^>{F17}')--F12      --Not working
elseif (button == 192) then lmc_send_keys('^>{F18}') --TILDE
elseif (button == string.byte('1')) then lmc_send_keys('^>{F19}')
elseif (button == string.byte('2')) then lmc_send_keys('^>{F20}')
elseif (button == string.byte('3')) then lmc_send_keys('^>{F21}')
elseif (button == string.byte('4')) then lmc_send_keys('^>{F22}')
elseif (button == string.byte('5')) then lmc_send_keys('^>{F23}')
elseif (button == string.byte('6')) then lmc_send_keys('^>{F24}')
elseif (button == string.byte('7')) then lmc_send_keys('%>{F13}')
elseif (button == string.byte('8')) then lmc_send_keys('%>{F14}')
elseif (button == string.byte('9')) then lmc_send_keys('%>{F15}')
elseif (button == string.byte('0')) then lmc_send_keys('%>{F16}')

----3rd using F13 to F24 with modifier Right Alt
elseif (button == 189) then lmc_send_keys("%>{F17}")-- MINUS(-)
elseif (button == 187) then lmc_send_keys("%>{F18}")-- EQUALS (=)
elseif (button == 8) then lmc_send_keys("%>{F19}")  -- BACKSPACE
elseif (button == 9) then lmc_send_keys('%>{F20}')   --TAB
elseif (button == string.byte('Q')) then lmc_send_keys('%>{F21}')
elseif (button == string.byte('W')) then lmc_send_keys('%>{F22}')
elseif (button == string.byte('E')) then lmc_send_keys('%>{F23}')
elseif (button == string.byte('R')) then lmc_send_keys('%>{F24}')
elseif (button == string.byte('T')) then lmc_send_keys('+>{F13}')
elseif (button == string.byte('Y')) then lmc_send_keys('+>{F14}')
elseif (button == string.byte('U')) then lmc_send_keys('+>{F15}')
elseif (button == string.byte('I')) then lmc_send_keys('+>{F16}')

----4th using F13 to F24 with modifier Right Shift
elseif (button == string.byte('O')) then lmc_send_keys('+>{F17}')
elseif (button == string.byte('P')) then lmc_send_keys('+>{F18}')
elseif (button == 219) then lmc_send_keys('+>{F19}') --LEFTBRACKET
elseif (button == 221) then lmc_send_keys('+>{F20}') --RIGHTBRACKET
elseif (button == string.byte('A')) then lmc_send_keys('+>{F21}')
elseif (button == string.byte('S')) then lmc_send_keys('+>{F22}')
elseif (button == string.byte('D')) then lmc_send_keys('+>{F23}')
elseif (button == string.byte('F')) then lmc_send_keys('+>{F24}')
elseif (button == string.byte('G')) then lmc_send_keys('+<{F13}')
elseif (button == string.byte('H')) then lmc_send_keys('+<{F14}')
elseif (button == string.byte('J')) then lmc_send_keys('+<{F15}')
elseif (button == string.byte('K')) then lmc_send_keys('+<{F16}')
---[[
----4th using F13 to F24 with modifier Left Shift
elseif (button == string.byte('L')) then lmc_send_keys('+<{F17}')
elseif (button == 186) then lmc_send_keys('+<{F18}') --SEMICOLON
elseif (button == 222) then lmc_send_keys('+<{F19}') --SINGLEQUOTE
elseif (button == 13) then lmc_send_keys('+<{F20}')  --ENTER
elseif (button == string.byte('Z')) then lmc_send_keys('+<{F21}')
elseif (button == string.byte('X')) then lmc_send_keys('+<{F22}')
elseif (button == string.byte('C')) then lmc_send_keys('+<{F23}')
elseif (button == string.byte('V')) then lmc_send_keys('+<{F24}')
elseif (button == string.byte('B')) then lmc_send_keys('%<{F13}')
elseif (button == string.byte('N')) then lmc_send_keys('%<{F14}')
elseif (button == string.byte('M')) then lmc_send_keys('%<{F15}')
elseif (button == 188) then lmc_send_keys('%<{F16}') --COMMA

----5th using F13 to F24 with modifier Left Alt
elseif (button == 190) then lmc_send_keys('%<{F17}') --PERIOD
elseif (button == 191) then lmc_send_keys('%<{F18}') --SLASH
--elseif (button == 44) then lmc_send_keys('%<{F19}')   --PRINTSCREEN
--elseif (button == 145) then lmc_send_keys('%<{F20}')  --SCROLL LOCK
elseif (button == 19) then lmc_send_keys('%<{F19}')   --PAUSEBREAK
elseif (button == 45) then lmc_send_keys('%<{F20}')    --INSERT
elseif (button == 36) then lmc_send_keys('%<{F21}')    --HOME
elseif (button == 33) then lmc_send_keys('%<{F22}')     --PAGEUP
elseif (button == 46) then lmc_send_keys('%<{F23}')      --DELETE
elseif (button == 35) then lmc_send_keys('%<{F24}')          --END
elseif (button == 34) then lmc_send_keys('%>+>{F13}')   --PAGEDOWN
elseif (button == 38) then lmc_send_keys('%>+>{F14}')   --GUP

----6th using F13 to F24 with modifier Right Alt+ Right Shift
elseif (button == 37) then lmc_send_keys('%>+>{F15}')   --LEFT
elseif (button == 40) then lmc_send_keys('%>+>{F16}')   --DOWN
elseif (button == 39) then lmc_send_keys('%>+>{F17}')     --RIGHT
--elseif (button == 144) then lmc_send_keys('%>+>{F18}')     --NUMPAD DISABLE
elseif (button == 111) then lmc_send_keys('%>+>{F18}')     --NUMDIV
elseif (button == 106) then lmc_send_keys('%>+>{F19}')            --NUMMULT
elseif (button == 109) then lmc_send_keys('%>+>{F20}') --MINUS
elseif (button == 103) then lmc_send_keys('%>+>{F21}') --7
elseif (button == 104) then lmc_send_keys('%>+>{F22}') --8
elseif (button == 105) then lmc_send_keys('%>+>{F23}') --NUM9
elseif (button == 107) then lmc_send_keys('%>+>{F24}')  --PLUS
elseif (button == 100) then lmc_send_keys('^>+>{F13}') --4
	
----7th using F13 to F24 with modifier Right Control+ Right Shift
elseif (button == 101) then lmc_send_keys('^>+>{F14}') --5
elseif (button == 102) then lmc_send_keys('^>+>{F15}') --6
elseif (button == 97) then lmc_send_keys('^>+>{F16}') --1
elseif (button == 98) then lmc_send_keys('^>+>{F17}') --2
elseif (button == 99) then lmc_send_keys('^>+>{F18}') --3
----FREE BUTTONS
elseif (button == 13) then lmc_send_keys('^>+>{F19}')
elseif (button == 96) then lmc_send_keys('^>+>{F20}')
elseif (button == 110) then lmc_send_keys('^>+>{F21}')
elseif (button == 32) then lmc_send_keys('^>+>{F22}')  --SPACE
elseif (button == 220) then lmc_send_keys('^>+>{F24}') --BACKSLASH
elseif (button == 108) then lmc_send_keys('^>+>{F12}') --NUMENTER
--elseif (button == string.byte('{NUM7}')) then lmc_send_keys('^>+>{F24}')
--elseif (button == 220) then lmc_send_keys('^>+>{F18}')


-- Hide window to tray to keep taskbar tidy  
--Start Script

