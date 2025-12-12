# TheUSDOX Assets Repository

Official asset repository for the TheUSDOX ecosystem. Central source for all branding materials, token assets, and visual resources used across theusdox.com and theusdox-dapp.

## 🎯 Overview

This repository contains production-ready assets for the TheUSDOX ecosystem:

- **theusdox.com** - Official website assets
- **theusdox-dapp** - Decentralized application assets
- **USDO Token** - Stablecoin branding and visual materials
- **TWUSD Token** - Wrapped token branding and visual materials

All assets are optimized for web delivery and follow web3 naming standards (lowercase, hyphen-separated).

## 📁 Repository Structure

```
theusdox-assets/
├── branding/           # Master brand assets
│   ├── logos/          # TheUSDOX logos (SVG, PNG)
│   ├── icons/          # Icon sets and app icons
│   ├── typography/     # Font files and typography guidelines
│   └── colors/         # Brand color palettes and swatches
├── tokens/             # Token assets (SVG, PNG - 256px, 512px)
│   ├── usdo/           # USDO token icons and logos
│   └── twusd/          # TWUSD token icons and logos
├── wallet-icons/       # Wallet and exchange listing formats
│   ├── trustwallet/    # TrustWallet format assets
│   ├── metamask/       # MetaMask format assets
│   ├── coinbase/       # Coinbase Wallet format assets
│   └── uniswap/        # Uniswap listing format assets
├── contracts/          # Smart contract metadata
│   ├── usdo/           # USDO contract addresses, ABI, metadata
│   └── twusd/          # TWUSD contract addresses, ABI, metadata
├── social/             # Social media assets
│   ├── banners/        # Twitter/X banners, LinkedIn covers
│   ├── og-images/      # Open Graph images for sharing
│   └── profile-icons/  # Profile pictures and avatars
├── marketing/          # Marketing materials
│   ├── post-templates/ # Social media post templates
│   ├── sponsor-logos/  # Partner and sponsor logos
│   └── press-kit/      # Press releases and media kit
└── react-svgs/         # React-ready SVG components
    ├── components/     # SVG React components
    ├── tokens/         # Token SVG components
    └── icons/          # Icon SVG components
```

## 🚀 Quick Start

### For Developers

```bash
# Clone the repository
git clone https://github.com/VKATHUSHAN/theusdox-assets.git

# For React/Next.js/Vite projects
# Import SVG components directly
import { UsdoIcon } from './theusdox-assets/react-svgs/tokens'

# Or reference assets by URL
const logoUrl = '/assets/branding/logos/theusdox-logo.svg'
```

### For Wallet/Exchange Integration

```bash
# Navigate to wallet-specific formats
cd theusdox-assets/wallet-icons/trustwallet

# Use contract metadata for listings
cd theusdox-assets/contracts/usdo
```

### For Designers

1. Browse the repository structure
2. Download assets in required format (SVG, PNG)
3. Follow brand guidelines in each folder's README
4. All assets are web-optimized and production-ready

## 📋 Asset Categories

### 🎨 Branding
- **Logos**: Primary TheUSDOX brand logos (SVG, PNG)
- **Icons**: App icons, favicons, launcher icons
- **Typography**: Font files and type specifications
- **Colors**: Brand color palettes (HEX, RGB, HSL)

### 🪙 Tokens
- **USDO**: Token icons in SVG and PNG (256px, 512px)
- **TWUSD**: Token icons in SVG and PNG (256px, 512px)
- Optimized for light and dark themes

### 👛 Wallet Icons
- **TrustWallet**: Token listing format
- **MetaMask**: Token listing format
- **Coinbase**: Wallet integration format
- **Uniswap**: DEX listing format

### 📜 Contracts
- **Metadata**: Token contract addresses
- **ABI**: Contract ABI files (JSON)
- **References**: Chain IDs, decimals, symbols

### 📱 Social Media
- **Banners**: Twitter/X covers (1500x500px)
- **OG Images**: Open Graph images (1200x630px)
- **Profile Icons**: Avatars and profile pictures

### 📢 Marketing
- **Post Templates**: Social media templates
- **Sponsor Logos**: Partner branding
- **Press Kit**: Media resources and guidelines

### ⚛️ React SVGs
- **Components**: Ready-to-use React components
- **Tokens**: Token SVG components
- **Icons**: Icon SVG components
- Compatible with React, Next.js, Vite

## 📝 File Naming Convention

All files follow web3 standards:
```
✅ theusdox-logo.svg
✅ usdo-icon-256px.png
✅ twitter-banner-dark.png

❌ TheUSDOX Logo.svg
❌ USDO_Icon_256px.png
❌ Twitter Banner Dark.png
```

**Rules:**
- Lowercase only
- Hyphen-separated (kebab-case)
- No spaces or underscores
- Descriptive and concise

## 🎨 Brand Standards

### Colors
See `branding/colors/README.md` for:
- Primary and secondary colors
- Color usage guidelines
- Accessibility standards

### Typography
See `branding/typography/README.md` for:
- Font families and weights
- Type scale and hierarchy
- Web font integration

### Logos
See `branding/logos/README.md` for:
- Logo usage guidelines
- Minimum sizes and clear space
- Color variations

## 🔧 Integration with theusdox-dapp

This repository is designed for seamless integration:

```javascript
// In your React/Next.js project
import { UsdoIcon, TwusdIcon } from '@theusdox/assets/react-svgs/tokens'

// Use in components
<UsdoIcon className="w-8 h-8" />
```

### VS Code Integration
1. Add repository as git submodule
2. Reference assets using relative paths
3. Use IntelliSense for asset discovery

## 🤝 Contributing

### Adding New Assets

1. Create feature branch: `git checkout -b add-new-asset`
2. Add asset to appropriate directory
3. Follow naming conventions
4. Optimize for web (compress images, minify SVGs)
5. Update directory README if needed
6. Submit pull request

### Asset Requirements

- **Images**: Optimized for web (compress PNG/JPG)
- **SVGs**: Minified, remove unnecessary metadata
- **Naming**: Follow kebab-case convention
- **Formats**: Provide multiple formats when applicable

## 📄 License

MIT License - See [LICENSE](LICENSE) for details.

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/VKATHUSHAN/theusdox-assets/issues)
- **Questions**: Open a discussion in this repository

---

**🔐 Official Repository** - All TheUSDOX assets should be sourced from here to ensure consistency and authenticity.
