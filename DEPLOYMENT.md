# 🚀 Deployment Guide - Hosting on GitHub Pages

This guide will help you deploy your Bitcoin Ticker app to GitHub Pages for **FREE**!

## Prerequisites

- A GitHub account
- This repository forked or pushed to your GitHub account

## Step-by-Step Deployment Instructions

### 1. Enable GitHub Pages

1. Navigate to your repository on GitHub: `https://github.com/[YOUR_USERNAME]/bitcoin_ticker`
2. Click on **Settings** (gear icon) at the top right
3. In the left sidebar, scroll down and click on **Pages**
4. Under **Build and deployment**:
   - **Source**: Select **GitHub Actions** from the dropdown
   - You should see a message saying "Your site is ready to be published"

### 2. Trigger the First Deployment

You have two options:

#### Option A: Push to main/master branch (Recommended)
```bash
# Make any small change (or just trigger workflow)
git commit --allow-empty -m "Trigger deployment"
git push origin main
```

#### Option B: Manually trigger the workflow
1. Go to the **Actions** tab in your GitHub repository
2. Click on "Deploy Flutter Web to GitHub Pages" workflow
3. Click the **Run workflow** button on the right
4. Select the branch (main/master) and click **Run workflow**

### 3. Monitor the Deployment

1. Go to the **Actions** tab in your repository
2. You'll see a workflow running called "Deploy Flutter Web to GitHub Pages"
3. Click on it to see the progress
4. The deployment typically takes 2-3 minutes:
   - ✅ Build phase: ~1-2 minutes (installs Flutter, builds web app)
   - ✅ Deploy phase: ~30 seconds (uploads to GitHub Pages)

### 4. Access Your Live Site

Once the deployment is complete (green checkmark ✅):

1. Go back to **Settings** → **Pages**
2. You'll see: "Your site is live at `https://[YOUR_USERNAME].github.io/bitcoin_ticker/`"
3. Click the link or visit: `https://[YOUR_USERNAME].github.io/bitcoin_ticker/`

🎉 **Congratulations!** Your Bitcoin Ticker is now live on the internet!

## Automatic Updates

From now on, every time you push changes to the main/master branch, your site will automatically rebuild and redeploy. No manual intervention needed!

## Troubleshooting

### Issue: "404 - Page not found"

**Solution:**
- Wait a few minutes after the first deployment
- Check that the workflow completed successfully (green checkmark in Actions tab)
- Verify GitHub Pages is enabled and set to "GitHub Actions"

### Issue: Workflow fails with "Permission denied"

**Solution:**
1. Go to **Settings** → **Actions** → **General**
2. Scroll to **Workflow permissions**
3. Select **Read and write permissions**
4. Click **Save**
5. Re-run the workflow

### Issue: App loads but shows errors

**Solution:**
- Check the browser console for errors (F12 → Console tab)
- Verify the API key in `lib/coin_data.dart` is valid
- Check that the base href in the workflow matches your repository name

## Customization

### Change the Base URL

If you want to deploy to a different path or custom domain:

1. Edit `.github/workflows/deploy.yml`
2. Find the line: `flutter build web --release --base-href /bitcoin_ticker/`
3. Change `/bitcoin_ticker/` to your desired path
4. For a custom domain or root path, use `/`

### Custom Domain

To use a custom domain (e.g., `crypto.example.com`):

1. Add a `CNAME` file to the `web/` folder with your domain name
2. Configure your DNS settings to point to GitHub Pages
3. In GitHub Settings → Pages, add your custom domain
4. Update the base-href in the workflow to `/`

## Free Hosting Limits

GitHub Pages free tier includes:
- ✅ 1GB storage
- ✅ 100GB bandwidth per month
- ✅ 10 builds per hour
- ✅ HTTPS included
- ✅ Custom domain support

These limits are more than enough for personal projects!

## Alternative Free Hosting Options

If you prefer other platforms:

### Netlify
1. Sign up at [netlify.com](https://netlify.com)
2. Connect your GitHub repository
3. Build command: `flutter build web --release`
4. Publish directory: `build/web`

### Vercel
1. Sign up at [vercel.com](https://vercel.com)
2. Import your GitHub repository
3. Framework: Other
4. Build command: `flutter build web --release`
5. Output directory: `build/web`

### Firebase Hosting
1. Install Firebase CLI: `npm install -g firebase-tools`
2. Run: `firebase init hosting`
3. Public directory: `build/web`
4. Deploy: `firebase deploy`

## Need Help?

- Check the [GitHub Pages documentation](https://docs.github.com/en/pages)
- Review [Flutter web deployment guide](https://docs.flutter.dev/deployment/web)
- Open an issue in this repository

---

**Happy deploying! 🚀**
