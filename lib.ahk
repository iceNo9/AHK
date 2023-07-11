#Requires AutoHotkey v2.0

GDebugPrint(val)
{
    OutputDebug(val "`n")
}

GSetVaue(this, at_x, at_y)
{
    this.x := at_x
    this.y := at_y
}

; 点坐标基类对象
point := {}
point.x := 0
point.y := 0
point.SetValue := GSetVaue

point.SetValue(1,2)
GDebugPrint(point.x)
GDebugPrint(point.y)