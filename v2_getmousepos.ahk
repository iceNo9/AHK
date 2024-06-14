#Requires AutoHotkey v2.0

SetTimer WatchCursor, 100

WatchCursor()
{
    MouseGetPos(&x, &y, &id, &control) 
    ToolTip("[" x ", " y "]")
}