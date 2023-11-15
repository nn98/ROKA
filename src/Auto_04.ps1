# 새로고침할 웹사이트 URL
$url = "https://example.com"

# Microsoft Edge 창 열기
$edge = Start-Process -PassThru msedge $url

# 무한 루프
while ($true) {
    # Microsoft Edge로 포커스 이동
    (New-Object -ComObject Shell.Application).Windows() | Where-Object { $_.LocationURL -eq $url } | ForEach-Object {
        $_.Activate()
    }

    # F5 키를 보내서 새로고침
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.SendKeys]::SendWait("{F5}")

    # 5초 대기 후 반복
    Start-Sleep -Seconds 5
}

# Find Clue