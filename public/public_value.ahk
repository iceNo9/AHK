#Include %A_ScriptDir%\lib.ahk

;存入物品
gpPutGoods:=Point.Call(688, 684)

;取出物品
gpGetGoods :=Point.Call(741, 684)

;存入金币
gpPutGold :=Point.Call(686, 627)

;取出金币
gpGutGold :=Point.Call(741, 627)

;快捷栏1-6
gpShortBar := Array.Call(Point.Call(415, 880))
gpShortBarOffset := 30
InitShortBar(){
    gpShortBar.Capacity := 6
    at_i := 0
    loop 6{        
        temp := gpShortBar.Get(at_i)
        temp.SetValue(temp.x + gpShortBarOffset, temp.y)
        gpShortBar.Push temp
        at_i++
        GDebugPrint(temp.x ** temp.y)
    }
}

InitShortBar()
GDebugPrint("end")
