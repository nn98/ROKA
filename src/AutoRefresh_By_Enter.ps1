<#
# 메모장 실행
Start-Process notepad

# 무한 루프
while ($true) {

    # 메모장 창에 포커스 이동
    #Add-Type -AssemblyName System.Windows.Forms
    #[System.Windows.Forms.SendKeys]::SendWait("^{ESC}")  # Alt+Tab으로 다른 창에서 메모장 창으로 이동
    #Start-Sleep -Milliseconds 100
    #[System.Windows.Forms.SendKeys]::SendWait("^{ESC}")  # Alt+Tab으로 다시 돌아와서 포커스 설정

    # Ctrl+R 키를 보내서 새로고침
    [System.Windows.Forms.SendKeys]::SendWait("{Enter}")

    # 5초 대기 후 반복
    Start-Sleep -Seconds 5
}
에서 걍 Send 만
#>

while ($true) {
    [System.Windows.Forms.SendKeys]::SendWait("{Enter}")
    Start-Sleep -Seconds 5
}
