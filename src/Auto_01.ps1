# 새로고침할 웹사이트 URL
$url = "https://example.com"

# 창 생성
Add-Type -AssemblyName System.Windows.Forms
$form = New-Object Windows.Forms.Form
$form.Text = "Auto Refresh"

# 웹 브라우저 컨트롤 추가
$webBrowser = New-Object Windows.Forms.WebBrowser
$webBrowser.Url = [System.Uri]$url
$form.Controls.Add($webBrowser)

# 주기적인 새로고침 타이머
$timer = New-Object System.Windows.Forms.Timer
$timer.Interval = 5000  # 5초 마다
$timer.Add_Tick({
    $webBrowser.Refresh()
})
$form.Add_Shown({
    $timer.Start()
})
$form.ShowDialog()

# ㅅㅂ 지맘대로 Windows Forms GUI띄움