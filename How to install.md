To setup the blog, you need to connect two folders to each other.   On the left, is the actual data/posts of the blog, which are stored on Google Drive.   On the right is this git repository.  Follow the directions below to do this
```
Google Drive/                           obsidian-blog/     
    your-blog-data/     <---------->        blog-vault/ 
     
    ^^^^^^^^^^^^^^                          ^^^^^^^^^^^
First, select this with the             Second, open this as
link-to-google-drive script             a vault in Obsidian
```

- ## Steps

1. **Install Google Drive for Desktop** (if you haven't already):  
   [https://workspace.google.com/products/drive/#download](https://workspace.google.com/products/drive/#download)

2. **Clone the GitHub repository**:  
   [https://github.com/amccaugh/obsidian-blog](https://github.com/amccaugh/obsidian-blog)

3. **Run the linking script to connect the two folders**:
   - **macOS**: Run the script `link-to-google-drive_OSX`
   - **Windows**: Right-click `link-to-google-drive_Windows-run-as-Admin.bat` and choose **"Run as administrator"**
   - When prompted, navigate to your **Google Drive folder** (e.g., `G:\Google Drive`) and select the folder named `qittlab-blog` (this should contain `posts/`, `attachments/`, etc.)

4. **Open the Obsidian vault**:
   - In Obsidian, go to:  
     `Manage vaults` → `Open folder as vault`
   - Navigate to:  
     `obsidian-blog/blog-vault/` (from the repo you cloned)
   - Select it to open as your blog vault.

---

## Important Note
**Do NOT open the Google Drive folder directly with Obsidian!**  
Always use the `blog-vault/` folder inside the git repository as your Obsidian vault.