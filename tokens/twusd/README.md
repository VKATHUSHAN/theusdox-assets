# TWUSD Token Assets

Official assets for the TWUSD wrapped token.

## 🪙 About TWUSD

**Token Name**: TWUSD  
**Type**: Wrapped Token  
**Symbol**: TWUSD  
**Decimals**: 18 (standard)

For contract details, see `/contracts/twusd/`

## 📁 Available Assets

### SVG (Vector)
- `twusd-icon.svg` - Scalable vector icon
- Recommended for web and apps
- Optimized and minified
- Viewbox: 0 0 512 512

### PNG (Raster)
- `twusd-icon-256px.png` - 256×256 pixels
- `twusd-icon-512px.png` - 512×512 pixels
- Transparent background
- Web-optimized compression

## 📝 File Naming

```
twusd-icon.svg           # Vector format
twusd-icon-256px.png     # Standard size
twusd-icon-512px.png     # High resolution
```

## 🎨 Design Specifications

- **Shape**: Circular with TWUSD branding
- **Background**: Transparent
- **Colors**: Brand colors (see `/branding/colors/`)
- **Padding**: 10% internal padding for clear space

## 🔧 Usage Examples

### React/Next.js
```jsx
import TwusdIcon from './tokens/twusd/twusd-icon.svg';

export function TwusdDisplay() {
  return (
    <div className="flex items-center gap-2">
      <img src={TwusdIcon} alt="TWUSD" className="w-8 h-8" />
      <span>TWUSD</span>
    </div>
  );
}
```

### HTML
```html
<img 
  src="/tokens/twusd/twusd-icon-256px.png" 
  alt="TWUSD Token"
  width="48"
  height="48"
/>
```

### CSS
```css
.twusd-icon {
  width: 32px;
  height: 32px;
  background-image: url('./tokens/twusd/twusd-icon.svg');
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
- Contract metadata: `/contracts/twusd/`

### React Components
For React SVG components:
```jsx
import { TwusdIcon } from './react-svgs/tokens/TwusdIcon';

<TwusdIcon className="w-10 h-10" />
```

## 🎯 Use Cases

### Token Balance Display
```jsx
<div className="token-balance">
  <img src={TwusdIcon} className="w-6 h-6" />
  <span>1,000.00 TWUSD</span>
</div>
```

### Token Pair
```jsx
<div className="token-pair">
  <img src={TwusdIcon} className="w-8 h-8" />
  <span>/</span>
  <img src={UsdcIcon} className="w-8 h-8" />
</div>
```

### Transaction History
```jsx
<div className="tx-item">
  <img src={TwusdIcon} className="w-4 h-4" />
  <span>Sent 100 TWUSD</span>
</div>
```

## ♿ Accessibility

Always provide descriptive alt text:
```html
<img src={TwusdIcon} alt="TWUSD wrapped token" />
```

## 📊 Token Information

For complete token information:
- **Contract Address**: See `/contracts/twusd/token-info.json`
- **Metadata**: See `/contracts/twusd/metadata.json`
- **ABI**: See `/contracts/twusd/abi.json`

## 🔄 Updates

Last updated: [Date will be set when actual assets are added]

When assets are updated, ensure:
1. All size variants are updated
2. Optimization is applied
3. React components are regenerated
4. Documentation is current
