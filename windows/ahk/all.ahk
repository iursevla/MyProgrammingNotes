; Quick Tools
; Fanatic Guru
; 2015 04 09
;
; Shortcuts to bring up Windows Tools
;
;{-----------------------------------------------
; Window+X          Open/Activate/Minimize Windows Snipping Tool
; Window+Numpad 0   Open/Activate/Minimize Windows Calculator
;}

; INITIALIZATION - ENVIROMENT
;{-----------------------------------------------
;
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force  ; Ensures that only the last executed instance of script is running
;}

; HOTKEYS
;{-----------------------------------------------
;
!PrintScreen::	; <-- Open/Activate/Minimize Windows Snipping Tool
{
	if WinExist("ahk_class Microsoft-Windows-Tablet-SnipperToolbar")
	{
		WinGet, State, MinMax
		if (State = -1)
		{	
			WinRestore
			Send, ^n
		}
		else if WinActive()
			WinMinimize
		else
		{
			WinActivate
			Send, ^n
		}
	}
	else if WinExist("ahk_class Microsoft-Windows-Tablet-SnipperEditor")
	{
		WinGet, State, MinMax
		if (State = -1)
			WinRestore
		else if WinActive()
			WinMinimize
		else
			WinActivate
	}
	else
		Run SnippingTool.exe
	return
}

^PrintScreen::	; <-- Open/Activate/Minimize Windows Calculator
{
	Run C:\Program Files (x86)\LICEcap\licecap.exe
	return
}

#numpad0::	; <-- Open/Activate/Minimize Windows Calculator
{
	if WinExist("ahk_class CalcFrame")
		if WinActive()
			WinMinimize
		else
			WinActivate
	else
		Run calc.exe
	return
}
;}

; Ctrl+Alt+Win+F12 - Sleep VER https://autohotkey.com/docs/Hotkeys.htm
>^!#F12::
	DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)