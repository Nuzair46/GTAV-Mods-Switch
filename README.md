# GTAV-Mods-Switch
A simple Mod Enabler/Disabler for GTAV OpenIV

* Just run the `GTAV Mod Switch.bat` file and enter the path for your GTAV (Folder which contains "GTAV.exe")  
* To make the path input permanent 
    * Open the bat file in any editor 
    * Change the line no.6 `$loc = Read-Host -Prompt "Enter GTA V installation path "`
                      to `$loc = "path:/to/gtav" ` 
    * replace `"path:/to/gtav"` with your path. Quotes "" are important here.  
        * Example `$loc = "D:/Games/GTAV"`
