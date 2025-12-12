# Wallet Icons

Token icons formatted for popular cryptocurrency wallets and exchanges.

## 📁 Directory Structure

```
wallet-icons/
├── trustwallet/        # TrustWallet format
├── metamask/           # MetaMask format
├── coinbase/           # Coinbase Wallet format
└── uniswap/            # Uniswap listing format
```

## 🎯 Purpose

Each wallet and exchange platform has specific requirements for token icon submissions. This directory contains properly formatted assets for each platform.

## 📱 Supported Platforms

### TrustWallet
**Directory**: `trustwallet/`  
**Format**: PNG  
**Size**: 256×256 pixels  
**Background**: Transparent  
**Requirements**: Follow TrustWallet asset guidelines

See `trustwallet/README.md` for detailed specifications.

### MetaMask
**Directory**: `metamask/`  
**Format**: SVG, PNG  
**Size**: 256×256 pixels minimum  
**Background**: Transparent  
**Requirements**: Follow MetaMask token list standards

See `metamask/README.md` for detailed specifications.

### Coinbase Wallet
**Directory**: `coinbase/`  
**Format**: PNG  
**Size**: 256×256 pixels  
**Background**: Transparent  
**Requirements**: Follow Coinbase asset standards

See `coinbase/README.md` for detailed specifications.

### Uniswap
**Directory**: `uniswap/`  
**Format**: SVG, PNG  
**Size**: 200×200 pixels minimum  
**Background**: Transparent  
**Requirements**: Follow Uniswap token list schema

See `uniswap/README.md` for detailed specifications.

## 📝 File Naming Convention

Each platform directory contains token-specific files:
```
Platform/
├── usdo.png
├── twusd.png
└── README.md
```

**Rules**:
- Lowercase token symbol
- Platform-specific format
- No size suffix (size determined by platform)

## 🔧 Usage

### For Token Listing Submissions

1. **Choose the platform** you want to list on
2. **Navigate to the platform directory**
3. **Use the appropriate asset** for your token
4. **Follow the platform's submission process**

### File Selection Guide

| Platform | USDO Asset | TWUSD Asset |
|----------|-----------|------------|
| TrustWallet | `trustwallet/usdo.png` | `trustwallet/twusd.png` |
| MetaMask | `metamask/usdo.png` | `metamask/twusd.png` |
| Coinbase | `coinbase/usdo.png` | `coinbase/twusd.png` |
| Uniswap | `uniswap/usdo.svg` | `uniswap/twusd.svg` |

## 📋 Submission Checklists

### TrustWallet Submission
- [ ] Icon is 256×256 PNG
- [ ] Transparent background
- [ ] Optimized file size (< 100KB)
- [ ] No whitespace padding
- [ ] Token info matches contract

### MetaMask Submission
- [ ] Icon is SVG or PNG
- [ ] Minimum 256×256 pixels
- [ ] Transparent background
- [ ] Added to token list repository
- [ ] Follows EIP-747 standards

### Coinbase Submission
- [ ] Icon is 256×256 PNG
- [ ] Transparent background
- [ ] High quality rendering
- [ ] Submitted through Coinbase asset hub

### Uniswap Submission
- [ ] Icon is SVG (preferred) or PNG
- [ ] Minimum 200×200 pixels
- [ ] Transparent background
- [ ] Added to Uniswap token list
- [ ] Follows token list schema

## 🎨 Design Guidelines

### General Requirements
- Clean, simple, recognizable design
- Transparent background (no white/colored backgrounds)
- Sufficient padding (10% internal margin)
- High contrast for visibility
- Readable at small sizes

### Color Considerations
- Works on both light and dark backgrounds
- Maintains brand identity
- Sufficient contrast for accessibility

### Quality Standards
- Sharp, crisp edges
- No artifacts or compression issues
- Proper anti-aliasing
- Optimized file size

## 🔗 Platform Resources

### TrustWallet
- [Asset Repository](https://github.com/trustwallet/assets)
- [Contributing Guide](https://github.com/trustwallet/assets/blob/master/contributing.md)

### MetaMask
- [Token List Spec](https://github.com/MetaMask/eth-token-list)
- [EIP-747](https://eips.ethereum.org/EIPS/eip-747)

### Coinbase
- [Asset Hub](https://www.coinbase.com/asset-hub)
- [Submission Guidelines](https://help.coinbase.com/en/coinbase/getting-started/crypto-education)

### Uniswap
- [Token Lists](https://tokenlists.org/)
- [Token List Spec](https://github.com/Uniswap/token-lists)

## 📊 Related Assets

For complete token information and metadata:
- **Token Assets**: `/tokens/`
- **Contract Metadata**: `/contracts/`
- **React Components**: `/react-svgs/`

## 🔄 Maintenance

When updating wallet icons:
1. Update icons for all platforms simultaneously
2. Ensure consistency across platforms
3. Test visibility on different backgrounds
4. Verify file sizes and optimization
5. Update platform submissions if needed

## 📄 License

These assets are part of the TheUSDOX ecosystem. Use for official token listings only.
