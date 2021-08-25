try {
    $RegPath = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\HAXM'
    $UninstallPath = Get-ItemProperty -Path $regpath | Select-Object -ExpandProperty 'UninstallString'
    $SilentSwitch = '/S'

    Start-Process $UninstallPath $SilentSwitch -Wait
} 
Catch {
    Write-Error 'Uninstall of Intel HAXM Failed' 
}

