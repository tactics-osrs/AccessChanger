# AccessChanger

AccessChanger is a simple batch script designed to help Windows users modify file permissions on their system. It provides a user-friendly interface to display and change the Access Control List (ACL) of a file.

## Features

- **Display ACL**: Shows the current permissions of a file.
- **Strip All Access**: Denies all users full control permissions to the file.
- **Grant Full Access to Administrators**: Grants Administrators full control permissions to the file.
- **Grant Read Access to Users**: Grants Users read permissions to the file.
- **Help**: Displays a help message that explains how to use the script.

## Usage

1. Run the script in Command Prompt with administrative privileges.
2. Enter the full path of the file you want to modify.
3. Select an option from the menu by entering the corresponding number.

## How It Works

The script uses the `icacls` command-line utility, which is built into Windows, to display and modify the ACL of a file. When you select an option from the menu, the script constructs and executes the appropriate `icacls` command.

## Disclaimer

Modifying file permissions can potentially harm your system if not done correctly. Always back up important data and consider seeking professional help if needed. Use this script at your own risk.
