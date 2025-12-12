# TWUSD Contract Metadata

Smart contract information and metadata for the TWUSD wrapped token.

## 🪙 Token Information

**Name**: TWUSD  
**Symbol**: TWUSD  
**Type**: Wrapped Token (ERC-20)  
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

const twusdInfo = require('./token-info.json');
const twusdABI = require('./abi.json');

const twusdContract = new web3.eth.Contract(
  twusdABI,
  twusdInfo.addresses.mainnet
);

// Get balance
const balance = await twusdContract.methods
  .balanceOf(userAddress)
  .call();

// Transfer tokens
await twusdContract.methods
  .transfer(recipientAddress, amount)
  .send({ from: userAddress });
```

### Ethers.js Example

```javascript
const { ethers } = require('ethers');

const twusdInfo = require('./token-info.json');
const twusdABI = require('./abi.json');

const contract = new ethers.Contract(
  twusdInfo.addresses.mainnet,
  twusdABI,
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
import twusdMetadata from './metadata.json';

// Add to your token list
const tokenList = {
  name: "My Token List",
  tokens: [
    twusdMetadata,
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

- **Token Icons**: `/tokens/twusd/`
- **Wallet Assets**: `/wallet-icons/`
- **React Components**: `/react-svgs/tokens/`

## 📄 Block Explorers

- Etherscan: [View Contract](https://etherscan.io/token/0x0000000000000000000000000000000000000000)
- Sepolia: [View Contract](https://sepolia.etherscan.io/token/0x0000000000000000000000000000000000000000)

## ⚠️ Disclaimer

Contract addresses are placeholders until actual deployment. Always verify addresses independently before use.
