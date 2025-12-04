# Quick Start Guide - Host Your Bitcoin Ticker Online

## 🎯 Goal Achieved!
Your Bitcoin Ticker app is now ready to be hosted online **completely FREE** using GitHub Pages!

## ⚡ Quick Setup (5 minutes)

### Step 1: Enable GitHub Pages
1. Go to: `https://github.com/AlajeBash/bitcoin_ticker/settings/pages`
2. Under **Source**, select: **GitHub Actions**
3. Click **Save**

### Step 2: Deploy
The app will automatically deploy when you:
- Push to `main` or `master` branch, OR
- Go to **Actions** tab → "Deploy Flutter Web to GitHub Pages" → **Run workflow**

### Step 3: Access Your Live App
After 2-3 minutes, visit:
```
https://AlajeBash.github.io/bitcoin_ticker/
```

## ✅ What Was Added

### 1. Automated Deployment Workflow
- **File**: `.github/workflows/deploy.yml`
- **Purpose**: Automatically builds and deploys your Flutter web app to GitHub Pages
- **Trigger**: Every push to main/master branch

### 2. Optimized Web Configuration
- **Updated**: `web/index.html` - Better SEO and mobile support
- **Updated**: `web/manifest.json` - Progressive Web App (PWA) ready
- **Added**: `web/.nojekyll` - Prevents GitHub Pages Jekyll conflicts

### 3. Comprehensive Documentation
- **Updated**: `README.md` - Complete guide with features and setup
- **Added**: `DEPLOYMENT.md` - Detailed deployment and troubleshooting guide
- **Added**: `QUICKSTART.md` - This file!

## 🔧 How It Works

```
You push code → GitHub Actions runs → Flutter builds web app → Deployed to GitHub Pages
```

1. **Build**: Flutter compiles your Dart code to optimized JavaScript
2. **Deploy**: Static files are uploaded to GitHub Pages CDN
3. **Live**: Your app is accessible worldwide with HTTPS

## 📱 Features of Your Live App

✅ Real-time crypto prices (BTC, ETH, LTC)
✅ 23+ currency support
✅ Mobile-friendly responsive design
✅ Works offline (PWA capable)
✅ Automatic updates on every push
✅ Free HTTPS included

## 🎨 Customization

### Change Repository Name?
If you rename your repo, update the base href in `.github/workflows/deploy.yml`:
```yaml
run: flutter build web --release --base-href /YOUR_NEW_REPO_NAME/
```

### Want a Custom Domain?
1. Add a `CNAME` file to `web/` folder with your domain (e.g., `crypto.example.com`)
2. Configure DNS: Add a CNAME record pointing to `AlajeBash.github.io`
3. In GitHub Settings → Pages, add your custom domain
4. Update workflow: `--base-href /` (remove /bitcoin_ticker/)

## 🆘 Troubleshooting

### "404 Not Found" after deployment
- Wait 2-3 minutes for initial deployment
- Check Actions tab to ensure workflow succeeded ✅
- Verify Settings → Pages shows "Your site is live at..."

### Workflow fails with permission error
1. Settings → Actions → General
2. Workflow permissions → Select "Read and write permissions"
3. Save and re-run workflow

### App loads but shows API errors
- The free CoinAPI key in the code has usage limits
- For production, get your own key at [coinapi.io](https://www.coinapi.io/)
- Update the `apiKey` in `lib/coin_data.dart`

## 📊 Free Hosting Limits

GitHub Pages gives you:
- ✅ 1 GB storage
- ✅ 100 GB bandwidth/month
- ✅ 10 builds/hour
- ✅ Free HTTPS
- ✅ Custom domains

More than enough for personal projects!

## 🚀 Next Steps

1. **Enable GitHub Pages now** (Step 1 above)
2. **Wait for deployment** (check Actions tab)
3. **Share your live app** with the world! 🌍
4. **Customize as needed** (colors, currencies, features)

## 📚 Need More Help?

- **Detailed Guide**: See `DEPLOYMENT.md`
- **Code Questions**: See `README.md`
- **GitHub Pages Docs**: [docs.github.com/pages](https://docs.github.com/pages)
- **Flutter Web Docs**: [docs.flutter.dev/deployment/web](https://docs.flutter.dev/deployment/web)

---

**You're all set! 🎉 Your app is ready to go live!**
