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
gpShortBar := Array.Call()
gpShortBarOffset := 30
InitShortBar(){
    gpShortBar.Capacity := 6
    at_i := 1
    at_basePos := Point.Call(415, 880)

    loop 6{        
        temp := Point.Call( at_basePos.x + ( at_i - 1 ) * gpShortBarOffset, at_basePos.y )
        gpShortBar.Push temp
        at_i++
    }
}

;金库1行1列-13行8列
gpVault := Array.Call()
gpVaultOffset := 30
InitVault(){
    gpVault.Capacity := 104
    at_basePos := Point.Call(530, 260)
    at_col := 1
    at_row := 1

    loop 13{
        loop 8{
            temp := Point.Call( at_basePos.x + ( at_col -1 ) * gpVaultOffset, at_basePos.y + ( at_row - 1 ) * gpVaultOffset )
            gpVault.Push temp
            at_col++
        }
        at_row++
        at_col := 1
    }
}

InitShortBar()
InitVault()

GDebugPrint("end")
