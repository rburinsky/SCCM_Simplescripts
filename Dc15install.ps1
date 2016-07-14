function Delete-Shortcut{

#Skip error messages so the script won't hang
$ErrorActionPreference

#path 
$Path = "c:\Users\Public\Desktop\"

#shortcut name
$SC= "Acrobat` Reader` DC.lnk"

#Combine path with shortcut.  Easier to edit script for future use.
$File= $Path + $SC


#Delete file.  del is alias for Remove-Item
del $File
}

cmd.exe /c "msiexec /package acroread.msi /qn /norestart"
start-sleep -s 120
Delete-Shortcut