;;;===,,,@echo off
;;;===,,,findstr /v "^;;;===,,," "%~f0" > "%~dp0ps.ps1"
;;;===,,,PowerShell.exe -ExecutionPolicy Bypass -Command "& '%~dp0ps.ps1'"
;;;===,,,del /s /q "%~dp0ps.ps1" >NUL 2>&1
;;;===,,,pause
$loc = Read-Host -Prompt "Enter GTA V installation path "

if ((test-path $loc\dinput8.dll) -or (test-path $loc\OpenIV.asi) -or (test-path $loc\ScriptHookV.dll)){
	Write-Host @'

     Warning: Mods are Currently ENABLED. 
'@`n
} else {
	Write-Host @'
	
	Mods are Currently DISABLED/Not installed.
'@`n
}

$ch = Read-Host -Prompt "[d] - Disable Mods `n[e] - Enable Mods`n " 
if ($ch -eq 'd'){
     Write-Host @'
     Disabling Mods...
'@`n
	
	mkdir $loc\asi_backups >$null 2>&1

	move $loc\dinput8.dll $loc\asi_backups\dinput8.dll.bak >$null 2>&1
	move $loc\OpenIV.asi $loc\asi_backups\OpenIV.asi.bak >$null 2>&1
	move $loc\ScriptHookV.dll $loc\asi_backups\ScriptHookV.dll >$null 2>&1
	
	rm $loc\dinput8.dll >$null 2>&1
	rm $loc\OpenIV.asi >$null 2>&1
	rm $loc\OpenIV.log >$null 2>&1
	rm $loc\asiloader.log >$null 2>&1
}
if ($ch -eq 'e'){
	  Write-Host @'
     Enabling Mods...
'@`n
	
	move $loc\asi_backups\dinput8.dll.bak  $loc\dinput8.dll >$null 2>&1
	move $loc\asi_backups\OpenIV.asi.bak  $loc\OpenIV.asi >$null 2>&1
	move $loc\asi_backups\ScriptHookV.dll $loc\ScriptHookV.dll >$null 2>&1

	rm $loc\asi_backups\dinput8.dll.bak >$null 2>&1
	rm $loc\asi_backups\OpenIV.asi.bak >$null 2>&1
}
