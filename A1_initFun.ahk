#Include %A_ScriptDir%\public\public_value.ahk

; A1_gui := Gui.Call("AlwaysOnTop", "设置参数")

; A1_gui.Add("Text",, "请输入金币数量(不输入默认500000):")
; A1_guiEditCtrl := A1_gui.Add("Edit", "Number w100")

; A1_guiEditCtrl.OnEvent("Change", A1_ImportPara)
; ; A1_gui.OnEvent(A1_guiEditCtrl.Ctrl_Change(), A1_ImportPara)

; A1_gui.Show

WinMove(0,0,,,"地下城与勇士：创新世纪")
WinActivate("地下城与勇士：创新世纪")


global A1_ggoldNumber := 0 ;金币初始化值
A1_ImportPara(val){
    A1_ggoldNumber := val
    GDebugPrint(A1_ggoldNumber)
}

SetKeyDelay(100, 50)

;先全部存入
GClickCoordinate(gpPutGold)
GClickCoordinate(gpPutGold)

;再取出
GClickCoordinate(gpGutGold)
Sleep(100)
SendEvent("{Text}500000")
Sleep(100)
GClickCoordinate(gpGutGold)
; 1
; 1
; 1
; 1
; 1
; 1
; 11
; 1
; 1
; 1
; 1
