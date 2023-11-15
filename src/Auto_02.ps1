# 새로고침할 웹사이트 URL
$url = "https://example.com"

# Internet Explorer 창 열기
$ie = New-Object -ComObject InternetExplorer.Application
$ie.Visible = $true

# 무한 루프
while ($true) {
    # 지정된 URL 열기
    $ie.Navigate($url)

    # 5초 대기 후 새로고침
    Start-Sleep -Seconds 5
}

# IE tq