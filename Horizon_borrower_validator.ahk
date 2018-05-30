#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

;Change the version info below each time there is a change  
VersionInfo:="Horizon_Borrower_Validation_v_0_1"

SetTitleMatchMode, 2
loop
{
WinWaitActive, Borrowers]
ControlGetText, HomeLocation , Edit1, Borrowers]
IniRead, LocationName, Horizon_borrower_validator.ini, Locations, %HomeLocation%
WinGetActiveTitle, StaffpacLocation

;This checks if the home location matches the staffpac location
If Not InStr(StaffpacLocation, LocationName)
	{
MsgBox, 4128, %VersionInfo%, The home location for this borrower is %LocationName%, `nThis doesn't match the location you're at.`nPlease check with the borrower if they'd like`nto change home location.
}

;This checks if there is a comma in the Borrower name field
ControlGetText, BorrowerName , Edit5, Borrowers]
Comma := ","
If Not InStr(BorrowerName, Comma)
{
    MsgBox, 4112, %VersionInfo%, The Borrower name hasn't been entered correctly. `nYou need a comma in it. `nPlease fix this, then click OK.
}

WinWaitNotActive, Borrowers]
Continue
}