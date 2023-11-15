$url = "https://example.com"
$refreshInterval = 5  # 초 단위 갱신 주기

while ($true) {
    Start-Sleep -Seconds $refreshInterval
    Start-Process $url -Verb Open
}

# 새 창을 열고앉았음