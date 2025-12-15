# TWUSD Token - Ethereum Mainnet

Official assets and metadata for the TWUSD (TheUSDOX Wrapped Dollar EVM) token on Ethereum.

## Token Information

- **Name**: TheUSDOX Wrapped Dollar EVM
- **Symbol**: TWUSD
- **Type**: ERC20
- **Decimals**: 18
- **Contract Address**: `0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D`
- **Network**: Ethereum Mainnet
- **Chain ID**: 1

## Files

- `logo.png` - 512x512px optimized token logo (< 100KB)
- `info.json` - Token metadata in JSON format

## Token Logo

![TWUSD Logo](logo.png)

### Specifications
- **Size**: 512x512 pixels
- **Format**: PNG-24 with alpha channel
- **File Size**: < 100KB (optimized)
- **Background**: Transparent
- **Color Space**: sRGB

## Wallet Integration

This logo is optimized for wallet integrations:

- **Etherscan**: ✅ Ready (512x512px, < 200KB requirement)
- **Trust Wallet**: ✅ Ready (256x256px version available in `/branding/twusd/`)
- **MetaMask**: ✅ Ready (standard format)
- **CoinGecko**: ✅ Ready (200x200px compatible)
- **CoinMarketCap**: ✅ Ready (200x200px compatible)

## Verification

View on Etherscan: [https://etherscan.io/token/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D](https://etherscan.io/token/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D)

## Usage

### HTML
```html
<img 
  src="./logo.png" 
  alt="TWUSD Token"
  width="48"
  height="48"
/>
```

### React/Next.js
```jsx
import twusdLogo from './tokens/ethereum/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D/logo.png';

<img src={twusdLogo} alt="TWUSD" className="w-8 h-8" />
```

### CSS
```css
.twusd-icon {
  width: 32px;
  height: 32px;
  background-image: url('./logo.png');
  background-size: cover;
}
```

## Additional Sizes

For other sizes, see:
- `/branding/twusd/logo-256x256.png` (256x256px for Trust Wallet)
- `/branding/twusd/logo-512x512.png` (512x512px standard)
- `/branding/twusd/logo-1024x1024.png` (1024x1024px high resolution)

## Submission Guides

For wallet and listing platform submissions, see:
- `/wallet-submissions/etherscan/` - Etherscan logo submission guide
- `/wallet-submissions/trust-wallet/` - Trust Wallet submission guide
- `/wallet-submissions/coingecko/` - CoinGecko listing guide
- `/wallet-submissions/coinmarketcap/` - CoinMarketCap listing guide

## License

All assets are provided for use with the TWUSD token.
