; alt [hjkl] - vim directional modifiers
!h::Send,{Left}
!j::Send,{Down}
!k::Send,{Up}
!l::Send,{Right}

; ctrl [tabeq] - media controls
^Tab::Send {Media_Play_Pause}
^e::Send {Media_Next}
^q::Send {Media_Prev}

; alt . - off
!.::
    MsgBox, 52, Warning, Power off
    IfMsgBox, Yes, run, shutdown -s -f -t 0
    Return

; alt , - restart
!,::
    MsgBox, 52, Warning, Restart
    IfMsgBox, Yes, Shutdown, 2
    Return

; alt e - chrome
!e::
    Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" -start-maximized
    Return

; alt r - vscode
!r::
    Process, Exist, Code.exe
    If ErrorLevel <> 0
	    Process, Close, Code.exe
    Else
	    Run "C:\Users\Naz\AppData\Local\Programs\Microsoft VS Code\Code.exe"
	    Return

; alt s - spotify
!p::
    Process, Exist, Spotify.exe
    If ErrorLevel <> 0
	    Process, Close, Spotify.exe
    Else
	    Run "C:\Users\Naz\AppData\Roaming\Spotify\Spotify.exe"
	    Return

; ctrl alt q - dev
^!q::
    Run "C:\Users\Naz\AppData\Local\slack\slack.exe"
    Run "C:\Program Files\Viscosity\Viscosity.exe"
    Run "D:\Downloads\misc\MobaXterm_Portable_v10.5\MobaXterm_Personal_10.5.exe"
    Run "C:\Users\Naz\AppData\Roaming\Spotify\Spotify.exe"
    Return
