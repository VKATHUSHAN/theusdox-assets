# USDO Contract Metadata

Smart contract information and metadata for the USDO stablecoin token.

## 🪙 Token Information

**Name**: USDO  
**Symbol**: USDO  
**Type**: Stablecoin (ERC-20)  
**Decimals**: 18

## 📄 Available Files

### token-info.json
Basic token information including:
- Contract addresses for different networks
- Chain IDs
- Block explorer links
- Official links

### metadata.json
Complete token metadata for integrations:
- Token list format
- Logo URI
- Tags and categories
- Extended information

### abi.json
Standard ERC-20 contract ABI for programmatic interaction.

## 🌐 Network Addresses

⚠️ **IMPORTANT**: These are placeholder addresses. Update with actual deployed contract addresses.

- **Ethereum Mainnet**: `0x0000000000000000000000000000000000000000`
- **Sepolia Testnet**: `0x0000000000000000000000000000000000000000`
- **Goerli Testnet**: `0x0000000000000000000000000000000000000000`

## 🔧 Usage in DApp

### Web3.js Example

```javascript
const Web3 = require('web3');
const web3 = new Web3(provider);

const usdoInfo = require('./token-info.json');
const usdoABI = require('./abi.json');

const usdoContract = new web3.eth.Contract(
  usdoABI,
  usdoInfo.addresses.mainnet
);

// Get balance
const balance = await usdoContract.methods
  .balanceOf(userAddress)
  .call();

// Transfer tokens
await usdoContract.methods
  .transfer(recipientAddress, amount)
  .send({ from: userAddress });
```

### Ethers.js Example

```javascript
const { ethers } = require('ethers');

const usdoInfo = require('./token-info.json');
const usdoABI = require('./abi.json');

const contract = new ethers.Contract(
  usdoInfo.addresses.mainnet,
  usdoABI,
  provider
);

// Get balance
const balance = await contract.balanceOf(userAddress);

// Transfer tokens
const tx = await contract.transfer(recipientAddress, amount);
await tx.wait();
```

## 📊 Token List Integration

Use `metadata.json` for token list integration:

```javascript
import usdoMetadata from './metadata.json';

// Add to your token list
const tokenList = {
  name: "My Token List",
  tokens: [
    usdoMetadata,
    // ... other tokens
  ]
};
```

## 🔐 Security Notes

- Always verify contract addresses on block explorers
- Double-check addresses before mainnet transactions
- Use checksummed addresses
- Test thoroughly on testnet first

## 🔗 Related Resources

- **Token Icons**: `/tokens/usdo/`
- **Wallet Assets**: `/wallet-icons/`
- **React Components**: `/react-svgs/tokens/`

## 📄 Block Explorers

- Etherscan: [View Contract](https://etherscan.io/token/0x0000000000000000000000000000000000000000)
- Sepolia: [View Contract](https://sepolia.etherscan.io/token/0x0000000000000000000000000000000000000000)

## ⚠️ Disclaimer

Contract addresses are placeholders until actual deployment. Always verify addresses independently before use.
