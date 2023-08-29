# Changing computer state

# Locking a computer
rundll32.exe user32.dll,LockWorkStation

# Shutting down or restarting a computer

Get-CimInstance -ClassName Win32_OperatingSystem | Invoke-CimMethod -MethodName Shutdown

Stop-Computer

Restart-Computer

Restart-Computer -Force
