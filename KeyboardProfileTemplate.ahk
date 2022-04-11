Suspend
#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
;MaxHotkeysPerInterval 2000
#WinActivateForce 
;https://www.autohotkey.com/docs/AutoHotkey.htm 

;==========================================================
;READ ME!
;Your main toggle switch in activating this Keyboard Profile will be "Scroll-lock" just above Home Key. 
;If you want to activate this macro keyboard profile just press "Scroll-lock"
;and press again to deactivate.
;If you press it a Tool tip will appear at your cursor
;==========================================================
;TOGGLE SYSTEM;
scrolllock::
Suspend, toggle
profile:= 1
ToolTip, Macro Keys Toggled!
SetTimer, ToolTipOff, -1000
Return

ToolTipOff:
	ToolTip
return




;==========================================================
Profile := 1 ;default
;==========================================================
;You can create multiple profiles ADVANCED
F9::profile = 1
F10::profile = 2
F11::profile = 3
F12::profile = 4
;==========================================================
#If Profile = 1
;==========================================================
;'^' is equal to Ctrl
;'#' is equal to Win
; '!' is equal to Alt
; '+' is equal to shift
;==========================================================
;Functions
;==========================================================
;examples
;This is where you start writing basic programming
;The texts before "::" signifies the key you want to assign a macro.
;the first one will be RUN, it will open the file/application you want as long as you give the desitnation and .exe 
;Don't forget to press "Scroll-Lock" to activate this script!
ESC::
run C:\Windows\system32\calc.exe
return

;the second will be SEND. it will try to simulate key strokes or mouse clicks
F1::
send 4545
return

;now let's modify the calculator macro key by adding this condition. It is just similar to the first macrokey
;but if you minimize the calculator and press F2 instead of escape.
;The calculator App will then pop up!
F2::
If (WinExist("Calculator")){
    WinActivate
    ;MsgBox % "Existing but not active."
    }
else
run C:\Windows\system32\calc.exe
return

;now for my last basic tutorial will be a follow up command. Let's say you want to use your macro keyboard
;and immediately deactivate once you've pressed a macro key. This utilizes WinExist. Check AHK: Window Spy
F3::
If (WinExist("Calculator")){
    WinActivate
    ;MsgBox % "Existing but not active."
    }
else
run C:\Windows\system32\calc.exe
ToolTip, Macro Keys turned off
SetTimer, ToolTipOff, -1000
Suspend, toggle
Return

F4::
send hereismyemail@gmail.com
ToolTip, Macro Keys turned off
SetTimer, ToolTipOff, -1000
Suspend, toggle
Return



F5::
Reload ;so that if you've modifed your script you can just press this to 'refresh' your script
Suspend, toggle
Return
;==========================================================
;1234
;==========================================================
1::
2::
3::
4::

;==========================================================
;QWERT
;==========================================================
Q::
W::
E::
R::
T::
;==========================================================
;ASDF
;==========================================================
A::
S::
D::
F::
G::
;==========================================================
;ZXCV
;==========================================================
Z::
X::
C::
V::
B::
;==========================================================
;NUMPAD
;==========================================================
numpaddiv::
numpadmult::
numpadsub::
numpad7:: 
numpad8:: 
numpad9:: 
numpadadd:: 
numpad4:: 
numpad5:: 
numpad6:: 
numpad1:: 
numpad2:: 
numpad3:: 
numpad0::



