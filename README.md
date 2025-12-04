# 🤑 Bitcoin Ticker

A Flutter web application that displays real-time cryptocurrency prices for Bitcoin (BTC), Ethereum (ETH), and Litecoin (LTC) in multiple currencies.

## 🌐 Live Demo

The app is automatically deployed to GitHub Pages and can be accessed at:
`https://[your-username].github.io/bitcoin_ticker/`

## ✨ Features

- Real-time cryptocurrency price tracking
- Support for multiple fiat currencies (USD, EUR, GBP, and 20+ others)
- Clean and intuitive user interface
- Responsive web design
- Auto-updates on currency selection

## 🚀 Hosting Online for Free

This project is configured to automatically deploy to **GitHub Pages** for free hosting.

### Initial Setup (One-time)

1. **Enable GitHub Pages** in your repository:
   - Go to your repository on GitHub
   - Click on **Settings** → **Pages**
   - Under **Source**, select **GitHub Actions**
   - Save the changes

2. **Trigger Deployment**:
   - Push to the `main` or `master` branch, or
   - Go to **Actions** tab → Select "Deploy Flutter Web to GitHub Pages" → Click "Run workflow"

3. **Access Your Site**:
   - After deployment completes (2-3 minutes), visit: `https://[your-username].github.io/bitcoin_ticker/`
   - Replace `[your-username]` with your GitHub username

### Automatic Deployments

Once set up, the app automatically rebuilds and deploys whenever you push changes to the main/master branch.

## 🛠️ Local Development

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (3.5.0 or higher)
- A code editor (VS Code, Android Studio, or IntelliJ)

### Running Locally

1. Clone the repository:
   ```bash
   git clone https://github.com/AlajeBash/bitcoin_ticker.git
   cd bitcoin_ticker
   ```

2. Get dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run -d chrome
   ```
   Or for web:
   ```bash
   flutter run -d web-server
   ```

4. Build for web (production):
   ```bash
   flutter build web --release
   ```

## 📁 Project Structure

- `lib/main.dart` - App entry point and theme configuration
- `lib/price_screen.dart` - Main UI screen with price display
- `lib/coin_data.dart` - API integration for cryptocurrency data
- `web/` - Web-specific files (index.html, manifest, icons)
- `.github/workflows/deploy.yml` - GitHub Actions deployment configuration

## 🔧 Technologies Used

- **Flutter** - Cross-platform UI framework
- **CoinAPI** - Cryptocurrency price data API
- **GitHub Pages** - Free static site hosting
- **GitHub Actions** - CI/CD automation

## 📝 API Information

This app uses the [CoinAPI.io](https://www.coinapi.io/) REST API to fetch real-time cryptocurrency prices. The API key is included in the code for demonstration purposes.

## 🤝 Contributing

Feel free to fork this project and submit pull requests with improvements!

## 📄 License

This project is open source and available for educational purposes.

## 🔗 Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [CoinAPI Documentation](https://docs.coinapi.io/)
