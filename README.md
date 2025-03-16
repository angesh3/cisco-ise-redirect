# Cisco ISE PxGrid Assistant - Ngrok Redirect

This GitHub Pages repository provides a permanent URL that redirects to the latest ngrok URL for the Cisco ISE PxGrid Assistant.

## How It Works

1. The `index.html` file contains a simple redirect script that points to the current ngrok URL.
2. When visitors access the GitHub Pages URL, they are automatically redirected to the most recent ngrok URL.
3. A brief loading page shows the Cisco branding and a spinner before the redirect happens.

## How to Update the Ngrok URL

When your ngrok URL changes, you need to update this repository:

1. Edit the `index.html` file
2. Update the ngrok URL in both places:
   - In the manual link: `<a id="manual-link" href="https://your-new-ngrok-url.ngrok-free.app">`
   - In the JavaScript: `const ngrokUrl = "https://your-new-ngrok-url.ngrok-free.app";`
3. Commit and push your changes

The GitHub Pages site will automatically update with your new ngrok URL.

## Setup Instructions

### First-time Setup

1. Create a new GitHub repository
2. Enable GitHub Pages in the repository settings:
   - Go to Settings > Pages
   - Set the Source to "main" branch
   - Save the settings
3. Upload all the files in this directory to your repository
4. Wait a few minutes for GitHub Pages to deploy your site
5. Your site will be available at `https://yourusername.github.io/repo-name/`

### To Run Locally

If you want to test the redirect locally before pushing to GitHub:

1. Navigate to this directory
2. Run a simple HTTP server: `python -m http.server 8080`
3. Open your browser to `http://localhost:8080`

## Customization

Feel free to customize the appearance of the loading page by editing the CSS in the `index.html` file. You can also change the redirect delay (currently set to 3 seconds) by modifying the setTimeout value. 