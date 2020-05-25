# GTAV-Mods-Switch
A simple Mod Enabler/Disabler for GTAV OpenIV

#### What this does?
You don't have to go open OpenIV and wait everytime to disable/enable mods in GTAV. This script does the same + more much faster.
Initially you'll need OpenIV to install asiloader and OpenIV plugins.

When Mods are enabled:  
> commandline.txt with "-scofflineonly" is created so that the the only launcher offline, preventing any accidental access to online mode. 
>  
When Mods are disabled:   
> asiloader and openiv plugins are backed up in a folder and deleted from the GTAV dir.   
> Also the above created commandline.txt file is removed.  

#### Installation / How to run?
* No installation. Doesn't matter where this file is located.
* Just run the `GTAV Mod Switch.bat` file and enter the path for your GTAV (Folder which contains "GTAV.exe")  
* To make the path input permanent 
    * Open the bat file in any editor 
    * Change the line no.6 `$loc = Read-Host -Prompt "Enter GTA V installation path "`
                      to `$loc = "path:/to/gtav" ` 
    * replace `"path:/to/gtav"` with your path. Quotes "" are important here.  
        * Example `$loc = "D:/Games/GTAV"`
