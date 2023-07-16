#Requires AutoHotkey v2.0

class Point {   ; 点坐标基类对象
    x := 0
    y := 0
    SetValue(x, y){
        this.x := x
        this.y := y
    }
    __New(x, y) {
        this.x := x
        this.y := y
    }
}

GDebugPrint(val)    ;打印调试日志
{
    OutputDebug(val "`n")
}


GClickCoordinate(Point){    ;点击坐标
    MouseMove(Point.x, Point.y)
    Sleep(100)
    SendEvent("{Click}")    
    Sleep(100)
}


