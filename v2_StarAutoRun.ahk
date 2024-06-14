#Requires AutoHotkey v2.0

; 提权
full_command_line := DllCall("GetCommandLine", "str")

if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    try
    {
        if A_IsCompiled
            Run '*RunAs "' A_ScriptFullPath '" /restart'
        else
            Run '*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"'
    }
    ExitApp
}

; MsgBox "A_IsAdmin: " A_IsAdmin "`nCommand line: " full_command_line

; 变量定义
gameexepath := "D:\Star Rail\Game\StarRail.exe" ; 定义要启动的游戏EXE文件的完整路径
resbatpath := "E:\DATA FILE\SoftWare\快捷方式\res1k.bat" ; 定义调整分辨率的批处理完整路径

autoscriptpath := "D:\Public\Fhoe-Rail_v2.2.10\Fhoe-Rail\Fhoe-Rail.exe" ; 定义要启动的锄地EXE文件的完整路径
autoscriptworkpath := "D:\Public\Fhoe-Rail_v2.2.10\Fhoe-Rail" ;定义锄地exe的运行环境

xstartpos := 1554
ystartpos := 911
waitlogintime_ms := 1000 * 60
waitmaintime_ms := 1000 * 30
waitclicktime_ms := 1000 * 10

; 调整分辨率1K
RunWait(resbatpath)

; 先强制结束游戏
if WinExist("崩坏：星穹铁道")
    WinKill ; 使用由 WinExist 找到的窗口

; 启动游戏
Run(gameexepath)

; 等待游戏加载到主画面
Sleep(waitlogintime_ms)

; 点击进入游戏
Click(xstartpos, ystartpos)

; 等待加载月卡界面
Sleep(waitmaintime_ms)

; 过月卡界面
Click(xstartpos, ystartpos)
Sleep(waitclicktime_ms)
Click(xstartpos, ystartpos)

; 启动锄地exe
Run(autoscriptpath, autoscriptworkpath)