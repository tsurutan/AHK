; ウィンドウ操作
>^^f::WinMaximize, A
>^^m::WinMinimize, A
Ctrl & Tab::AltTab ; Window切り替え
Alt & S::Send, {LWin} S ; 

; タブ操作
Ctrl & {::o
Ctrl & }::p


; 矢印操作
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
RCtrl & h::Send {Left}
RCtrl & l::Send {Right}
RCtrl & j::Send {Down}
RCtrl & k::Send {Up}

; Alfred対応
~<ctrl::
    KeyWait, LCtrl ; wait for z to be released
    KeyWait, LCtrl, D T0.2 ; and pressed again within 0.2 seconds
    if !ErrorLevel ; timed-out (only a single press)
        Send {Home}
Return