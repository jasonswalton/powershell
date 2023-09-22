# Changing computer state
# https://learn.microsoft.com/en-us/powershell/scripting/samples/changing-computer-state?view=powershell-7.3

# Locking a computer
rundll32.exe user32.dll,LockWorkStation

# Shutting down or restarting a computer

Get-CimInstance -ClassName Win32_OperatingSystem | Invoke-CimMethod -MethodName Shutdown

Stop-Computer

Restart-Computer

Restart-Computer -Force
