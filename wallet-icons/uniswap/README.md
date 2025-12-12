# Uniswap Assets

Token icons formatted for Uniswap DEX listing.

## 📋 Specifications

- **Format**: SVG (preferred) or PNG
- **Size**: 200×200 pixels minimum
- **Background**: Transparent
- **Naming**: Lowercase token symbol

## 📁 Available Assets

- `usdo.svg` - USDO token icon (SVG)
- `usdo.png` - USDO token icon (PNG)
- `twusd.svg` - TWUSD token icon (SVG)
- `twusd.png` - TWUSD token icon (PNG)

## 📝 Uniswap Token List Requirements

### Image Specifications
- Format: SVG recommended, PNG acceptable
- Size: Minimum 200×200 pixels (for PNG)
- SVG: Properly formatted with viewBox
- Background: Transparent
- Optimized file size

### Token List Schema
Follow the [Uniswap Token List](https://tokenlists.org/) specification.

## 🔧 Token List Entry

Example entry for Uniswap token list:

```json
{
  "name": "USDO",
  "address": "0x...",
  "symbol": "USDO",
  "decimals": 18,
  "chainId": 1,
  "logoURI": "https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/wallet-icons/uniswap/usdo.svg",
  "tags": ["stablecoin", "defi"]
}
```

## 📊 Submission Process

### 1. Create Token List
Create a token list JSON file following the schema.

### 2. Host Logo
- Upload logo to public URL (GitHub, IPFS, etc.)
- Ensure permanent availability
- Use `logoURI` field in token list

### 3. Submit to Uniswap
Submit your token list to Uniswap's token list repository or use it directly in your application.

## 📊 Token Information

For contract addresses and metadata:
- USDO: See `/contracts/usdo/metadata.json`
- TWUSD: See `/contracts/twusd/metadata.json`

## 🔗 Resources

- [Token Lists Spec](https://tokenlists.org/)
- [Uniswap Token Lists](https://github.com/Uniswap/token-lists)
- [Uniswap Documentation](https://docs.uniswap.org/)

## ✅ Checklist

Before submission:
- [ ] Icon is SVG (preferred) or high-res PNG
- [ ] Minimum 200×200 pixels
- [ ] Transparent background
- [ ] Publicly accessible logoURI
- [ ] Valid token list JSON
- [ ] Contract address verified
- [ ] All metadata accurate
