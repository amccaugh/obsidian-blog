To setup the blog, you need to connect two folders to each other.   On the left, is the actual data/posts of the blog, which are stored on Google Drive.   On the right is this git repository.  Follow the directions below to do this
```
Google Drive/                           obsidian-blog/     
    your-blog-data/     <---------->        blog-vault/ 
     
    ^^^^^^^^^^^^^^                          ^^^^^^^^^^^
First, select this with the             Second, open this as
link-to-google-drive script             a vault in Obsidian
```

- Install Google Drive desktop if you haven't already: https://workspace.google.com/products/drive/#download
- Clone the `obsidian-blog` git repo from GitHub at https://github.com/amccaugh/obsidian-blog
- Open up the linking script in the repo:
	- OSX:  Run `link-to-google-drive_OSX`
	- Windows:  Right-click `link-to-google-drive_Windows-run-as-Admin.bat` and select "Run as administrator".
- In that script, select the GOOGLE DRIVE folder (i.e. `G:\Google Drive`) with the files in it (the folder with `posts/`, `attachments/`, etc)
- Once that's done, you're all set.  You should be able to now use Obsidian and add the `obsidian-blog/blog-vault/` as a vault.  Note: Do NOT open the Google Drive with obsidian!