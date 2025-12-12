# TrustWallet Assets

Token icons formatted for TrustWallet integration.

## 📋 Specifications

- **Format**: PNG
- **Size**: 256×256 pixels
- **Background**: Transparent
- **Color Mode**: RGB
- **File Size**: < 100KB recommended
- **Naming**: Lowercase token symbol

## 📁 Available Assets

- `usdo.png` - USDO token icon
- `twusd.png` - TWUSD token icon

## 📝 TrustWallet Requirements

### Image Specifications
- Dimensions: Exactly 256×256 pixels
- Format: PNG with transparency
- File size: Optimized (ideally < 100KB)
- No padding: Icon should fill the canvas with 10% internal margin
- Background: Must be transparent

### Design Guidelines
- Simple, recognizable design
- Clear at small sizes
- No text (symbol only)
- High contrast
- Works on both light and dark backgrounds

## 🔧 Submission Process

### 1. Prepare Asset
- Use the appropriate icon from this directory
- Verify it meets all specifications
- Test on light and dark backgrounds

### 2. Fork TrustWallet Assets Repository
```bash
git clone https://github.com/trustwallet/assets.git
cd assets
```

### 3. Add Token Icon
```bash
# For Ethereum tokens
mkdir -p blockchains/ethereum/assets/[CONTRACT_ADDRESS]
cp usdo.png blockchains/ethereum/assets/[CONTRACT_ADDRESS]/logo.png
```

### 4. Add Token Info
Create `info.json` with token details:
```json
{
  "name": "USDO",
  "type": "ERC20",
  "symbol": "USDO",
  "decimals": 18,
  "website": "https://theusdox.com",
  "description": "USDO stablecoin",
  "explorer": "https://etherscan.io/token/[CONTRACT_ADDRESS]",
  "status": "active",
  "id": "[CONTRACT_ADDRESS]"
}
```

### 5. Submit Pull Request
- Create PR with clear description
- Wait for automated checks to pass
- Respond to reviewer feedback

## 📊 Token Information

For contract addresses and details:
- USDO: See `/contracts/usdo/token-info.json`
- TWUSD: See `/contracts/twusd/token-info.json`

## 🔗 Resources

- [TrustWallet Assets Repository](https://github.com/trustwallet/assets)
- [Contributing Guidelines](https://github.com/trustwallet/assets/blob/master/contributing.md)
- [Developer Docs](https://developer.trustwallet.com/)

## ✅ Checklist

Before submission:
- [ ] Icon is exactly 256×256 pixels
- [ ] PNG format with transparency
- [ ] File size is optimized (< 100KB)
- [ ] Icon has 10% internal padding
- [ ] Works on light and dark backgrounds
- [ ] Contract address is verified
- [ ] Token info is accurate
- [ ] All automated checks pass
