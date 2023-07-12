#Include %A_ScriptDir%\public\public_value.ahk

WinMove(0,0,,,"地下城与勇士：创新世纪")
WinActivate("地下城与勇士：创新世纪")

A0_gui := Gui.Call("AlwaysOnTop", "使用须知")
A0_gui.Add("Text",, "设置画面比例16:9, 画面分辨率1600x900`nUI大小设置最小, 重置UI固定位置初始化`n请设置完成后重新运行")
A0_gui.Show
Sleep(3000)
A0_gui.Destroy()

