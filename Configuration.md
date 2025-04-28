# Folders to link
- attachments
- posts
- pages
- config
    - templates
- .trash


# Plugins
- Custom attachment location
	- To make `/attachments/2025/03/file.png`
- Pandoc or other exporter to export whole notes
- Templater
	- Automatically add date / user / etc properties to new posts
- Image resizing


# Templater
https://github.com/Ambi93/Obsidian-Sync/blob/main/Comprehensive%20User%20Guide%20for%20Templater%20in%20Obsidian.md


# Installation
Here's the applescript commands for OSX to make a nice
```applescript
-- Ask user to choose the source directory (target of the symlink)
set sourceFolder to choose folder with prompt "Please select the qittlab-blog Google Drive directory"
set sourcePath to POSIX path of sourceFolder

-- Get the script's own file path
set scriptAlias to (path to me) as alias
set destPath to POSIX path of scriptAlias
set destPath to do shell script "dirname " & quoted form of destPath
set destPath to destPath & "/blog-vault/"

-- List of subdirectories to link
set foldersToLink to {"attachments", "posts", ".trash", "pages", "config"}

-- Loop through each folder and create the symlink
repeat with folderName in foldersToLink
	set sourceItem to sourcePath & folderName
	set destItem to destPath & folderName
	do shell script "ln -sfn " & quoted form of sourceItem & " " & quoted form of destItem
	
end repeat

-- Notify user
display dialog "Linked to Google Drive successfully!" buttons {"OK"} default button "OK"
```