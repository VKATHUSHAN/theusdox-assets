# Contract Metadata

Smart contract addresses, ABIs, and metadata for TheUSDOX tokens.

## 📁 Directory Structure

```
contracts/
├── usdo/           # USDO token contract data
│   ├── token-info.json
│   ├── metadata.json
│   ├── abi.json
│   └── README.md
└── twusd/          # TWUSD token contract data
    ├── token-info.json
    ├── metadata.json
    ├── abi.json
    └── README.md
```

## 📋 File Descriptions

### token-info.json
Basic token information:
- Contract addresses (mainnet, testnet)
- Token symbol and name
- Decimals
- Chain IDs
- Explorer links

### metadata.json
Complete ERC-20 metadata following token standards:
- Name, symbol, decimals
- Total supply
- Contract deployment info
- Logo URI
- Website and social links

### abi.json
Contract Application Binary Interface:
- Complete contract ABI
- Function signatures
- Event definitions
- For programmatic interaction

## 🔧 Usage

### In DApp Development

```javascript
// Import contract data
import usdoInfo from './contracts/usdo/token-info.json';
import usdoABI from './contracts/usdo/abi.json';

// Initialize contract
const contract = new ethers.Contract(
  usdoInfo.addresses.mainnet,
  usdoABI,
  provider
);

// Call contract methods
const balance = await contract.balanceOf(userAddress);
```

### In Web3 Applications

```javascript
// Using Web3.js
const Web3 = require('web3');
const web3 = new Web3(provider);

const usdoInfo = require('./contracts/usdo/token-info.json');
const usdoABI = require('./contracts/usdo/abi.json');

const contract = new web3.eth.Contract(
  usdoABI,
  usdoInfo.addresses.mainnet
);
```

### Token List Integration

```javascript
// Import metadata for token lists
import usdoMetadata from './contracts/usdo/metadata.json';

// Create token list entry
const tokenListEntry = {
  chainId: usdoMetadata.chainId,
  address: usdoMetadata.address,
  name: usdoMetadata.name,
  symbol: usdoMetadata.symbol,
  decimals: usdoMetadata.decimals,
  logoURI: usdoMetadata.logoURI
};
```

## 📊 Token Information

### USDO Token
- **Directory**: `usdo/`
- **Type**: Stablecoin (ERC-20)
- **Decimals**: 18
- **Chains**: Ethereum mainnet, testnets

See `usdo/README.md` for complete details.

### TWUSD Token
- **Directory**: `twusd/`
- **Type**: Wrapped Token (ERC-20)
- **Decimals**: 18
- **Chains**: Ethereum mainnet, testnets

See `twusd/README.md` for complete details.

## 🔐 Security

### Verification
- All contract addresses are verified on block explorers
- ABIs are exported from verified contracts
- Double-check addresses before mainnet transactions

### Best Practices
- Always verify contract addresses independently
- Use checksummed addresses
- Test on testnet first
- Keep ABIs in sync with deployed contracts

## 🌐 Multi-Chain Support

Contract data includes addresses for multiple networks:
- **Ethereum Mainnet**: Production contracts
- **Sepolia**: Ethereum testnet
- **Goerli**: Ethereum testnet (deprecated)
- Additional chains as deployed

## 📝 File Format Examples

### token-info.json
```json
{
  "name": "USDO",
  "symbol": "USDO",
  "decimals": 18,
  "addresses": {
    "mainnet": "0x...",
    "sepolia": "0x..."
  },
  "chainIds": {
    "mainnet": 1,
    "sepolia": 11155111
  }
}
```

### metadata.json
```json
{
  "name": "USDO",
  "symbol": "USDO",
  "decimals": 18,
  "chainId": 1,
  "address": "0x...",
  "logoURI": "https://...",
  "website": "https://theusdox.com"
}
```

## 🔄 Updates

When contracts are updated or redeployed:
1. Update contract addresses in `token-info.json`
2. Export and update ABI from verified contract
3. Update metadata with new deployment info
4. Update README files with changelog
5. Verify all changes thoroughly

## 📄 Standards

All contract data follows:
- [ERC-20 Token Standard](https://eips.ethereum.org/EIPS/eip-20)
- [Uniswap Token Lists Spec](https://tokenlists.org/)
- [CoinGecko API Format](https://www.coingecko.com/en/api)

## 🔗 Related Resources

- **Token Icons**: `/tokens/`
- **Wallet Assets**: `/wallet-icons/`
- **React Components**: `/react-svgs/`

## ⚠️ Important Notes

- **PLACEHOLDER**: Contract addresses are placeholders until actual deployment
- **TESTNET FIRST**: Always test on testnet before mainnet
- **VERIFY**: Always verify contract addresses on block explorers
- **AUDIT**: Ensure contracts are audited before production use
