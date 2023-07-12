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




class Point {
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

;存入物品
gpPutGoods:=Point.Call(688, 684)

GDebugPrint(A_WorkingDir)
