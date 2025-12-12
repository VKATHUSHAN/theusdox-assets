# Token Assets

Official token icons and logos for USDO and TWUSD tokens.

## 📁 Directory Structure

```
tokens/
├── usdo/           # USDO token assets
└── twusd/          # TWUSD token assets
```

## 🪙 Available Tokens

### USDO
**Type**: Stablecoin  
**Directory**: `usdo/`  
**Formats**: SVG, PNG (256px, 512px)

### TWUSD
**Type**: Wrapped Token  
**Directory**: `twusd/`  
**Formats**: SVG, PNG (256px, 512px)

## 📋 Asset Specifications

### File Formats
- **SVG**: Vector format (recommended)
  - Optimized and minified
  - Viewbox: 0 0 512 512
  - No external dependencies
  
- **PNG**: Raster format with transparency
  - 256×256 pixels (standard)
  - 512×512 pixels (high-res)
  - Optimized for web delivery

### Design Standards
- **Aspect Ratio**: 1:1 (square)
- **Background**: Transparent
- **Padding**: 10% internal padding
- **Style**: Clean, recognizable at small sizes

## 🎯 Usage Guidelines

### For Wallets
Use token icons in wallet applications:
```javascript
import UsdoIcon from './tokens/usdo/usdo-icon-256px.png';

<img src={UsdoIcon} alt="USDO" className="w-8 h-8" />
```

### For Exchanges
Display token pairs and listings:
- Use 64px or 128px size for token pair listings
- Use 256px size for token detail pages
- Use SVG when dynamic sizing is needed

### For DApps
Integrate in decentralized applications:
```jsx
import { UsdoIcon } from './react-svgs/tokens/usdo-icon';

<UsdoIcon className="w-10 h-10" />
```

### For Documentation
Reference tokens in documentation:
- Use 32px or 64px inline with text
- Use 256px for feature graphics

## 📝 File Naming Convention

All token files follow this pattern:
```
{token}-icon-{size}.{format}

Examples:
usdo-icon.svg
usdo-icon-256px.png
usdo-icon-512px.png
twusd-icon.svg
twusd-icon-256px.png
```

## 🔧 Implementation Examples

### HTML
```html
<img 
  src="/tokens/usdo/usdo-icon-256px.png" 
  alt="USDO Token" 
  width="64" 
  height="64"
/>
```

### React
```jsx
import usdoIcon from './tokens/usdo/usdo-icon.svg';

export function TokenIcon() {
  return (
    <img 
      src={usdoIcon} 
      alt="USDO" 
      className="w-8 h-8"
    />
  );
}
```

### CSS Background
```css
.token-usdo {
  width: 32px;
  height: 32px;
  background-image: url('./tokens/usdo/usdo-icon.svg');
  background-size: contain;
  background-repeat: no-repeat;
}
```

## 🎨 Color Themes

Token icons should work on both light and dark backgrounds:
- **Light Background**: Use full-color version
- **Dark Background**: Ensure sufficient contrast
- **Monochrome**: Available for special use cases

## 📱 Platform-Specific Usage

### TrustWallet
See `/wallet-icons/trustwallet/` for TrustWallet-specific formats.

### MetaMask
See `/wallet-icons/metamask/` for MetaMask-specific formats.

### Coinbase Wallet
See `/wallet-icons/coinbase/` for Coinbase-specific formats.

### Uniswap
See `/wallet-icons/uniswap/` for Uniswap listing formats.

## 📊 Contract Information

For token contract addresses and metadata:
- USDO: `/contracts/usdo/`
- TWUSD: `/contracts/twusd/`

## 🔄 Updates

When updating token icons:
1. Update all size variants (SVG, 256px, 512px)
2. Update wallet-specific formats
3. Update React components in `/react-svgs/tokens/`
4. Test on light and dark backgrounds
5. Verify optimization and file sizes

## ♿ Accessibility

- Provide descriptive alt text
- Ensure icons are recognizable at small sizes
- Maintain proper contrast ratios
- Don't rely on color alone for meaning

## 📄 License

These token assets are part of the TheUSDOX ecosystem. Use in accordance with project guidelines.
