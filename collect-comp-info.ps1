# Collecting information about computers

# Listing desktop settings
Get-CimInstance -ClassName Win32_Desktop

Get-CimInstance -ClassName Win32_Desktop | Select-Object -ExcludeProperty "CIM*"

# Listing BIOS information
Get-CimInstance -ClassName Win32_BIOS

# Listing processor information
Get-CimInstance -ClassName Win32_Processor | Select-Object -ExcludeProperty "CIM*"

Get-CimInstance -ClassName Win32_ComputerSystem | Select-Object -Property SystemType

# Listing computer manufacturer and model
Get-CimInstance -ClassName Win32_ComputerSystem

# Listing installed hotfixes
Get-CimInstance -ClassName Win32_QuickFixEngineering

Get-CimInstance -ClassName Win32_QuickFixEngineering -Property HotFixID

Get-CimInstance -ClassName Win32_QuickFixEngineering -Property HotFixId | Select-Object -Property HotFixId

# Listing OS version information
Get-CimInstance -ClassName Win32_OperatingSystem

Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property BuildNumber,BuildType,OSType,ServicePackMajorVersion,ServicePackMinorVersion

Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property Build*,OSType,ServicePack*

# Listing local users and owner
Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property NumberOfLicensedUsers, NumberOfUsers, RegisteredUser

Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property *user*

# Getting available disk space
Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3"

Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3" | Measure-Object -Property FreeSpace,Size -Sum | Select-Object -Property Property,Sum

# Getting logon session information
Get-CimInstance -ClassName Win32_LogonSession

Get-CimInstance -ClassName Win32_ComputerSystem -Property UserName

# Getting local time
Get-CimInstance -ClassName Win32_LocalTime

# Displaying service status
Get-CimInstance -ClassName Win32_Service | Select-Object -Property Status,Name,DisplayName

Get-CimInstance -ClassName Win32_Service | Format-Table -Property Status, Name, DisplayName -AutoSize -Wrap
