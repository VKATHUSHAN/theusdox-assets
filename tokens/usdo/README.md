# USDO Token Assets

Official assets for the USDO stablecoin token.

## 🪙 About USDO

**Token Name**: USDO  
**Type**: Stablecoin  
**Symbol**: USDO  
**Decimals**: 18 (standard)

For contract details, see `/contracts/usdo/`

## 📁 Available Assets

### SVG (Vector)
- `usdo-icon.svg` - Scalable vector icon
- Recommended for web and apps
- Optimized and minified
- Viewbox: 0 0 512 512

### PNG (Raster)
- `usdo-icon-256px.png` - 256×256 pixels
- `usdo-icon-512px.png` - 512×512 pixels
- Transparent background
- Web-optimized compression

## 📝 File Naming

```
usdo-icon.svg           # Vector format
usdo-icon-256px.png     # Standard size
usdo-icon-512px.png     # High resolution
```

## 🎨 Design Specifications

- **Shape**: Circular with USDO branding
- **Background**: Transparent
- **Colors**: Brand colors (see `/branding/colors/`)
- **Padding**: 10% internal padding for clear space

## 🔧 Usage Examples

### React/Next.js
```jsx
import UsdoIcon from './tokens/usdo/usdo-icon.svg';

export function UsdoDisplay() {
  return (
    <div className="flex items-center gap-2">
      <img src={UsdoIcon} alt="USDO" className="w-8 h-8" />
      <span>USDO</span>
    </div>
  );
}
```

### HTML
```html
<img 
  src="/tokens/usdo/usdo-icon-256px.png" 
  alt="USDO Token"
  width="48"
  height="48"
/>
```

### CSS
```css
.usdo-icon {
  width: 32px;
  height: 32px;
  background-image: url('./tokens/usdo/usdo-icon.svg');
  background-size: cover;
}
```

## 📱 Platform Integration

### Wallet Integration
For wallet-specific formats, see:
- TrustWallet: `/wallet-icons/trustwallet/`
- MetaMask: `/wallet-icons/metamask/`
- Coinbase Wallet: `/wallet-icons/coinbase/`

### Exchange Listing
For exchange listing assets, see:
- Uniswap: `/wallet-icons/uniswap/`
- Contract metadata: `/contracts/usdo/`

### React Components
For React SVG components:
```jsx
import { UsdoIcon } from './react-svgs/tokens/UsdoIcon';

<UsdoIcon className="w-10 h-10" />
```

## 🎯 Use Cases

### Token Balance Display
```jsx
<div className="token-balance">
  <img src={UsdoIcon} className="w-6 h-6" />
  <span>1,000.00 USDO</span>
</div>
```

### Token Pair
```jsx
<div className="token-pair">
  <img src={UsdoIcon} className="w-8 h-8" />
  <span>/</span>
  <img src={UsdcIcon} className="w-8 h-8" />
</div>
```

### Transaction History
```jsx
<div className="tx-item">
  <img src={UsdoIcon} className="w-4 h-4" />
  <span>Sent 100 USDO</span>
</div>
```

## ♿ Accessibility

Always provide descriptive alt text:
```html
<img src={UsdoIcon} alt="USDO stablecoin token" />
```

## 📊 Token Information

For complete token information:
- **Contract Address**: See `/contracts/usdo/token-info.json`
- **Metadata**: See `/contracts/usdo/metadata.json`
- **ABI**: See `/contracts/usdo/abi.json`

## 🔄 Updates

Last updated: [Date will be set when actual assets are added]

When assets are updated, ensure:
1. All size variants are updated
2. Optimization is applied
3. React components are regenerated
4. Documentation is current
