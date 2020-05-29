;;;===,,,@echo off
;;;===,,,findstr /v "^;;;===,,," "%~f0" > "%temp%\ps.ps1"
;;;===,,,PowerShell.exe -ExecutionPolicy Bypass -Command "& '%temp%\ps.ps1'"
;;;===,,,del /s /q "%temp%\ps.ps1" >NUL 2>&1
;;;===,,,pause
$loc = Read-Host -Prompt "Enter GTA V installation path "

if ((test-path $loc\dinput8.dll) -or (test-path $loc\OpenIV.asi) -or (test-path $loc\ScriptHookV.dll)){
	Write-Host @'

     Warning: Mods are Currently ENABLED/Mod DLL's present. 
'@`n
} else {
	Write-Host @'
	
	Mods are Currently DISABLED/Not installed.
'@`n
}

$ch = Read-Host -Prompt "[e] - Enable Mods And Offline Mode`n[d] - Disable Mods for Online Mode `n " 
if ($ch -eq 'd'){
     Write-Host @'
     Disabling Mods...
'@`n
	
	mkdir $loc\asi_backups >$null 2>&1

	move $loc\dinput8.dll $loc\asi_backups\dinput8.dll.bak >$null 2>&1
	move $loc\OpenIV.asi $loc\asi_backups\OpenIV.asi.bak >$null 2>&1
	move $loc\ScriptHookV.dll $loc\asi_backups\ScriptHookV.dll.bak >$null 2>&1
	move $loc\d3d11.dll $loc\asi_backups\d3dll.dll.bak >$null 2>&1
	move $loc\Menyoo.asi $loc\asi_backups\Menyoo.asi.bak >$null 2>&1
	move $loc\openCameraV.asi $loc\asi_backups\openCameraV.asi.bak >$null 2>&1
	move $loc\d3dcompiler_46e.dll $loc\asi_backups\d3dcompiler_46e.dll.bak >$null 2>&1
	rm $loc\commandline.txt >$null 2>&1

}
elseif ($ch -eq 'e'){
	  Write-Host @'
     Enabling Mods...
'@`n
	
	move $loc\asi_backups\dinput8.dll.bak  $loc\dinput8.dll >$null 2>&1
	move $loc\asi_backups\OpenIV.asi.bak  $loc\OpenIV.asi >$null 2>&1
	move $loc\asi_backups\ScriptHookV.dll.bak $loc\ScriptHookV.dll >$null 2>&1
	move $loc\asi_backups\d3dll.dll.bak $loc\d3d11.dll  >$null 2>&1
	move $loc\asi_backups\Menyoo.asi.bak $loc\Menyoo.asi >$null 2>&1
	move $loc\asi_backups\openCameraV.asi.bak $loc\openCameraV.asi >$null 2>&1
	move $loc\asi_backups\d3dcompiler_46e.dll.bak $loc\d3dcompiler_46e.dll >$null 2>&1
	New-Item $loc\commandline.txt >$null 2>&1
	Set-Content $loc\commandline.txt '-scofflineonly'

} else{
     Write-Host @'
     No changes made. Exiting...
'@`n
     exit
}
