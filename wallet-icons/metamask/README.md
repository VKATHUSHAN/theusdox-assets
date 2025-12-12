# MetaMask Assets

Token icons formatted for MetaMask integration.

## 📋 Specifications

- **Format**: SVG (preferred) or PNG
- **Size**: 256×256 pixels minimum
- **Background**: Transparent
- **Naming**: Lowercase token symbol

## 📁 Available Assets

- `usdo.svg` - USDO token icon (SVG)
- `usdo.png` - USDO token icon (PNG)
- `twusd.svg` - TWUSD token icon (SVG)
- `twusd.png` - TWUSD token icon (PNG)

## 📝 MetaMask Requirements

### Image Specifications
- Format: SVG recommended, PNG acceptable
- Size: Minimum 256×256 pixels (for PNG)
- SVG: Properly formatted with viewBox
- Background: Transparent
- Optimized: Minified SVG, compressed PNG

### Design Guidelines
- Clear and recognizable at small sizes
- High contrast for visibility
- Works on light and dark themes
- No text unless part of logo design
- Follows EIP-747 standards

## 🔧 Integration Methods

### Method 1: Token Lists (Recommended)
Add token to a community token list following the [token list spec](https://github.com/MetaMask/eth-token-list).

### Method 2: Custom Token Addition
Users can manually add tokens using the contract address. MetaMask will attempt to fetch icon from:
1. Token list registries
2. CoinGecko API
3. Default icon

### Method 3: DApp Integration
Use `wallet_watchAsset` RPC method:
```javascript
await ethereum.request({
  method: 'wallet_watchAsset',
  params: {
    type: 'ERC20',
    options: {
      address: '[CONTRACT_ADDRESS]',
      symbol: 'USDO',
      decimals: 18,
      image: 'https://theusdox.com/assets/usdo.svg',
    },
  },
});
```

## 📊 Token List Entry

Example token list entry:
```json
{
  "chainId": 1,
  "address": "[CONTRACT_ADDRESS]",
  "name": "USDO",
  "symbol": "USDO",
  "decimals": 18,
  "logoURI": "https://theusdox.com/assets/usdo.svg",
  "tags": ["stablecoin", "defi"]
}
```

## 🔗 Resources

- [MetaMask Developer Docs](https://docs.metamask.io/)
- [EIP-747 (Watch Asset)](https://eips.ethereum.org/EIPS/eip-747)
- [Token Lists Spec](https://github.com/MetaMask/eth-token-list)

## ✅ Checklist

Before integration:
- [ ] Icon is SVG (preferred) or high-res PNG
- [ ] Transparent background
- [ ] Properly optimized
- [ ] Contract address verified
- [ ] Token metadata accurate
- [ ] logoURI is publicly accessible
- [ ] Tested on light and dark themes
