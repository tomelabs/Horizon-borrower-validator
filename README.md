# Horizon Borrower Validator
## Version 0.1
A tool to augment the Borrower editing process for the Horizon Library Management System (by [SirsiDynix](http://www.sirsidynix.com/)). 

The catalyst for creating this tool was a high incidence of incorrect data relating to Borrower records at the Library I work for. There are several causes for this, eg:
* Human error - the Borrower registration and validation process is probably the most complicated process that frontline staff are required to complete on the Horizon staff client. Understandably, there are frequent occurrences of misspelled works or syntax that hasn't been fixed/entered correctly.
* A lack of built-in validation on the Library Management System client - Horizon has a lot of free text fields, with little in the way of validation to ensure data has been entered correctly, eg. 
   * correct Title case used in Address fields, 
   * use of commas in borrower names, 
   * checking that email address looks valid

The intent is to aid staff users in data entry/validation to reduce errors and formatting issues. This is achieved by introducing a series of context-sensitive messageboxes when the "Edit: Borrowers" screen is active in the Horizon staff client. These messageboxes prompt the staff member to ensure the data in each field is clean and entered in the correct syntax and punctuation.

# Disclaimer
This project is not affiliated with or endorsed in any way by Sirsi Corporation.

## Prerequisites
This tool assumes you have the following:
* A Microsoft Windows operating system
* A SirsiDynix Horizon java client (tested on 7.5.2.x)

It is recommended that users download [AutoHotkey](https://autohotkey.com/) if they wish to make adjustments to the script and recompile the .exe of the tool for their own local needs.

## Installing

* Download the Horizon_Borrower_Validator folder and unzip
* Edit the .ini file to suit your needs
* Run the .exe file and test (or make edits to the .ahk file, compile it and then run your own version)
* For long term usage, consider running the executable on startup

# Built With
* [AutoHotkey](https://autohotkey.com/)
* A text editor (I prefer [notepad++](https://notepad-plus-plus.org/))

# Authors
Tom Edwards

# License
This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](https://github.com/tomelabs/Horizon-borrower-validator/blob/master/LICENSE) file for details
