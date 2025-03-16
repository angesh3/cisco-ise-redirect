# GitHub Setup Instructions

Follow these steps to host your ngrok redirect page on GitHub Pages:

## 1. Create a New Repository on GitHub

1. Go to [GitHub](https://github.com/) and log in to your account
2. Click on the '+' icon in the top right corner and select "New repository"
3. Name your repository (e.g., `cisco-ise-redirect`)
4. Leave the repository as Public
5. Do not initialize with README, .gitignore, or license (we already have these files)
6. Click "Create repository"

## 2. Push Your Code to GitHub

Once your repository is created, copy the URL and run these commands (replace `YOUR_USERNAME` and `YOUR_REPO_NAME`):

```bash
# You've already initialized git and made your first commit
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git branch -M main
git push -u origin main
```

## 3. Enable GitHub Pages

1. Go to your repository on GitHub
2. Click on 'Settings' tab
3. Navigate to 'Pages' from the left sidebar
4. Under 'Source', select 'Deploy from a branch'
5. Under 'Branch', select 'main' and '/(root)' folder
6. Click 'Save'

## 4. Access Your Public URL

After a few minutes, your site will be published at:
`https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/`

This is your permanent URL that redirects to your ngrok instance.

## 5. Update the ngrok URL

Whenever your ngrok URL changes, you can update it:

1. Run the update script: `./update-url.sh https://your-new-ngrok-url.ngrok-free.app`
2. Commit and push the changes:
```bash
git add index.html
git commit -m "Update ngrok URL"
git push
```

The GitHub Pages site will automatically update within a minute or two. 