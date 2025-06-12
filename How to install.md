To setup the blog, you need to connect two folders to each other.   On the left, is the actual data/posts of the blog, which are stored on Google Drive.   On the right is the vault which you will open with Obsidian.  Follow the directions below:

------------------------------------------------------------
Google Drive/                           obsidian-blog/     
    your-blog-data/          <------>       blog-vault/ 
     
    ^^^^^^^^^^^^^^                          ^^^^^^^^^^^
First, select this with the             Second, open this as
link-to-google-drive script             a vault in Obsidian
------------------------------------------------------------

1. Install Google Drive desktop if you haven't already: https://workspace.google.com/products/drive/#download

2. Clone the `obsidian-blog` git repo from GitHub at https://github.com/amccaugh/obsidian-blog

3. Open up the linking script in the repo:
	- OSX:  Run `link-to-google-drive_OSX`
	- Windows:  Right-click `link-to-google-drive_Windows-run-as-Admin.bat` and select "Run as administrator".

4. In that script, select the GOOGLE DRIVE folder (i.e. `G:\Google Drive`) with the files in it (the folder with `posts/`, `attachments/`, etc)

5. Add the vault: In Obsidian, go to:  
     `Manage vaults` → `Open folder as vault`
   - Navigate to:  
     `obsidian-blog/blog-vault/` (from the repo you cloned)
   - Select it to open as your blog vault.
   - Note: Do NOT open the Google Drive with obsidian!