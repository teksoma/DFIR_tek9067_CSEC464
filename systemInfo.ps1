
Write-Host "System information:"

function systemInfo(){

Write-Output "Current Time:"
Get-Date

Write-Output "Respective Time Zone:"
Get-TimeZone

Write-Output "Uptime:"
(get-date) - (gcim Win32_OperatingSystem).LastBootUpTime

Write-Output "Version of Windows:"
[environment]::OSVersion.Version

Write-Output "OS Name"
(gwmi win32_operatingsystem).caption

Write-Output "CPU Architecture:"
Get-WmiObject Win32_Processor

Write-Output "RAM:"
[Math]::Round((Get-WmiObject -Class Win32_ComputerSystem).TotalPhysicalMemory)

Write-Output "Hard drive space:"
gwmi win32_diskdrive

Write-Output "FileSystem information:"
gdr -PSProvider 'FileSystem'

Write-Output "Hostname:"
$env:COMPUTERNAME

Write-Output "Domain Name:"
(Get-WmiObject Win32_ComputerSystem).Domain

Write-Output "List of users:"
Get-WmiObject -Class Win32_UserAccount

Write-Output "List of services:"
Get-Service | select -property name,starttype

Write-Output "List of programs that start at boot:"
Get-CimInstance Win32_StartupCommand

Write-Output "Network information:"
ipconfig /all

Write-Output "ARP table"
arp -a

Write-Output "MAC-addr:"
getmac

Write-Output "Route table:"
Get-NetRoute

Write-Output "List of TCP services listening:"
Get-NetTCPConnection -State Listen

Write-Output "List of TCP services established:"
Get-NetTCPConnection -State Established

Write-Output "DNS Cache:"
Get-DnsClientCache

Write-Output "Printers:"
Get-Printer

Write-Output "Wifi Profiles:"
netsh.exe wlan show profiles

Write-Output "Installed software:"
Get-WmiObject -Class Win32_Product

Write-Output "Processes:"
Get-Process

Write-Output "Drivers:"
Get-WmiObject Win32_PnPSignedDriver | ft DeviceName, Location, DriverVersion, InstallDate, DriverProviderName

Write-Output  "Downloads and Documents:"
$path1 = [Environment]::GetFolderPath("Downloads")
$path2 = [Environment]::GetFolderPath("Documents")
Get-ChildItem -Path $path1 -Force
Get-ChildItem -Path $path2 -Force
}
systemInfo