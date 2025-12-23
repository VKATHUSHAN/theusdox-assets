# Wallet & Platform Submissions

Central hub for TWUSD token submissions to wallets, exchanges, and listing platforms.

## 📊 Submission Status Tracker

| Platform | Status | Submission Date | Approval Date | Notes |
|----------|--------|-----------------|---------------|-------|
| **Etherscan** | ⏳ Not Started | - | - | Logo submission for token page |
| **Trust Wallet** | ⏳ Not Started | - | - | GitHub PR to assets repo |
| **CoinGecko** | ⏳ Not Started | - | - | Listing request form |
| **CoinMarketCap** | ⏳ Not Started | - | - | Self-service portal |
| **MetaMask** | ⏳ Not Started | - | - | Auto-syncs from Trust Wallet |
| **1inch** | ⏳ Not Started | - | - | Auto-detects from DEX activity |
| **Uniswap** | ⏳ Not Started | - | - | Token list submission |

### Status Key
- ⏳ **Not Started** - Submission not yet initiated
- 🔄 **In Progress** - Submission in review
- ✅ **Approved** - Live on platform
- ❌ **Rejected** - Submission rejected (see notes)
- 🔁 **Resubmitted** - Resubmitted after rejection

## 📁 Available Guides

### Primary Platforms

#### 🔍 [Etherscan](./etherscan/)
Blockchain explorer logo submission
- **Guide**: [SUBMISSION_GUIDE.md](./etherscan/SUBMISSION_GUIDE.md)
- **Checklist**: [checklist.md](./etherscan/checklist.md)
- **Timeline**: 3-5 business days
- **Difficulty**: ⭐ Easy

#### 👛 [Trust Wallet](./trust-wallet/)
Mobile wallet integration via GitHub
- **Guide**: [SUBMISSION_GUIDE.md](./trust-wallet/SUBMISSION_GUIDE.md)
- **Checklist**: [checklist.md](./trust-wallet/checklist.md)
- **Timeline**: 1-7 days
- **Difficulty**: ⭐⭐ Moderate (requires GitHub)

#### 🦎 [CoinGecko](./coingecko/)
Cryptocurrency data aggregator listing
- **Guide**: [SUBMISSION_GUIDE.md](./coingecko/SUBMISSION_GUIDE.md)
- **Timeline**: 1-4 weeks
- **Difficulty**: ⭐⭐ Moderate

#### 📊 [CoinMarketCap](./coinmarketcap/)
Leading crypto market data platform
- **Guide**: [SUBMISSION_GUIDE.md](./coinmarketcap/SUBMISSION_GUIDE.md)
- **Timeline**: 2-8 weeks
- **Difficulty**: ⭐⭐⭐ Advanced

## 🎯 Quick Start Guide

### Step 1: Prepare Materials
Before starting any submission, ensure you have:

- ✅ Token contract deployed and verified
- ✅ Logo files optimized (available in `/branding/twusd/`)
- ✅ Token metadata (available in `/tokens/ethereum/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D/`)
- ✅ Official website and social media
- ✅ Active trading pairs and liquidity

### Step 2: Choose Priority Platforms
Recommended submission order:

1. **Etherscan** (Fastest, Most Important)
   - Essential for token legitimacy
   - Quick approval (3-5 days)
   - Logo visible to all Ethereum users

2. **Trust Wallet** (Second Priority)
   - Widely used mobile wallet
   - GitHub-based submission
   - Enables MetaMask auto-sync

3. **CoinGecko** (Third Priority)
   - Popular data aggregator
   - Free community visibility
   - Supports price tracking

4. **CoinMarketCap** (Fourth Priority)
   - Industry-standard listing
   - Longer review process
   - High visibility

### Step 3: Follow Platform Guides
Each platform has a dedicated submission guide with:
- Detailed requirements
- Step-by-step instructions
- Troubleshooting tips
- Timeline expectations

### Step 4: Track Progress
Update the status tracker above as you progress through submissions.

## 📋 Token Information

Use this information for all submissions:

### Basic Information
- **Token Name**: TheUSDOX Wrapped Dollar EVM
- **Symbol**: TWUSD
- **Type**: ERC20
- **Decimals**: 18

### Contract Information
- **Network**: Ethereum Mainnet
- **Chain ID**: 1
- **Contract Address**: `0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D`
- **Explorer**: https://etherscan.io/token/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D

### Logo Files
All logos are optimized and ready to use:
- **256x256px**: `/branding/twusd/logo-256x256.png` (~17KB)
- **512x512px**: `/branding/twusd/logo-512x512.png` (~21KB)
- **1024x1024px**: `/branding/twusd/logo-1024x1024.png` (~110KB)

See [Logo Specifications](../branding/twusd/logo-specifications.md) for details.

## 🎨 Platform-Specific Requirements

### Logo Specifications Summary

| Platform | Size | Format | Max Size | Background |
|----------|------|--------|----------|------------|
| Etherscan | 512x512 | PNG | 200KB | Transparent |
| Trust Wallet | 256x256 | PNG | 100KB | Transparent |
| CoinGecko | 200x200 | PNG | 500KB | Transparent |
| CoinMarketCap | 200x200 | PNG | 500KB | Transparent |
| MetaMask | Auto-sync | - | - | - |

*All required logo sizes are available in `/branding/twusd/`*

## 🔄 Automated Integrations

Some platforms automatically integrate without manual submission:

### MetaMask
- Auto-syncs from Trust Wallet assets repository
- Once Trust Wallet PR is merged, MetaMask will display logo
- No separate submission needed

### 1inch
- Automatically detects tokens with DEX activity
- Logo may auto-populate from other sources
- Can submit to token list if needed

### Uniswap
- Token lists can be submitted separately
- Logo often pulled from Trust Wallet
- Focus on Trust Wallet first

### DEX Aggregators
- Most aggregate from Trust Wallet and CoinGecko
- Maintain good data on primary platforms
- Secondary platforms will follow

## 📅 Submission Timeline Recommendations

### Week 1: Foundation
- Day 1-2: Submit to Etherscan
- Day 3-4: Submit to Trust Wallet
- Day 5-7: Monitor and respond to feedback

### Week 2: Expansion
- Day 8-10: Submit to CoinGecko
- Day 11-14: Submit to CoinMarketCap

### Week 3-4: Follow-up
- Monitor all submissions
- Respond to any requests
- Update status tracker
- Follow up if needed

### Ongoing
- Maintain active trading
- Keep information updated
- Monitor for approval
- Celebrate when live! 🎉

## ⚠️ Common Pitfalls to Avoid

1. **Wrong Contract Address Format**
   - Always use checksum format: `0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D`
   - Never use all lowercase

2. **Oversized Logo Files**
   - Use pre-optimized logos from this repository
   - Don't modify or re-compress

3. **Incomplete Information**
   - Fill out all required fields
   - Provide working links
   - Include comprehensive descriptions

4. **Rushing Submissions**
   - Take time to review before submitting
   - Double-check all information
   - Test all links

5. **Ignoring Platform Requirements**
   - Read each guide completely
   - Follow specific requirements
   - Use correct file formats

## 📞 Support & Resources

### Repository Resources
- [Token README](../tokens/ethereum/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D/README.md)
- [Logo Specifications](../branding/twusd/logo-specifications.md)
- [Integration Guide](../INTEGRATION.md)

### Platform Support
- Etherscan: https://etherscan.io/contactus
- Trust Wallet: https://github.com/trustwallet/assets/discussions
- CoinGecko: tokens@coingecko.com
- CoinMarketCap: https://support.coinmarketcap.com/

## 📝 Best Practices

### Before Submission
- ✅ Verify contract on blockchain explorer
- ✅ Establish trading pairs and liquidity
- ✅ Set up official website
- ✅ Create active social media presence
- ✅ Prepare all materials in advance
- ✅ Review all submission guides

### During Submission
- ✅ Use accurate, consistent information
- ✅ Provide high-quality materials
- ✅ Include all requested details
- ✅ Test all links before submitting
- ✅ Document submission dates
- ✅ Save confirmation emails

### After Submission
- ✅ Monitor email for responses
- ✅ Respond promptly to requests
- ✅ Update status tracker
- ✅ Follow up if no response after expected timeline
- ✅ Celebrate approvals
- ✅ Share success with team

## 🎯 Success Metrics

Track these metrics to measure integration success:

- [ ] Logo visible on Etherscan
- [ ] Listed in Trust Wallet
- [ ] Price tracked on CoinGecko
- [ ] Listed on CoinMarketCap
- [ ] Logo displays in MetaMask
- [ ] Appears in DEX aggregators
- [ ] All submissions completed
- [ ] No rejections or resubmissions needed

## 🔗 External Resources

### Helpful Tools
- **Address Checksum**: Use Etherscan to copy checksum format
- **Image Optimization**: Pre-optimized logos in this repository
- **JSON Validation**: Use https://jsonlint.com/
- **GitHub**: https://github.com (for Trust Wallet)

### Learning Resources
- Ethereum Contract Verification
- GitHub Pull Request Tutorial
- Blockchain Explorer Usage
- DeFi Platform Integration

## 📊 Progress Checklist

Use this to track overall progress:

- [ ] All materials prepared
- [ ] Etherscan submission completed
- [ ] Trust Wallet PR created
- [ ] CoinGecko request submitted
- [ ] CoinMarketCap application submitted
- [ ] All approvals received
- [ ] Logos verified on all platforms
- [ ] Status tracker updated
- [ ] Team notified of completion
- [ ] Documentation updated

## 🚀 Next Steps After Approval

Once approved on all platforms:

1. **Verification**: Check that logos appear correctly
2. **Documentation**: Update internal documentation
3. **Communication**: Announce to community
4. **Monitoring**: Regularly verify information is correct
5. **Maintenance**: Keep data updated on all platforms
6. **Expansion**: Consider additional platform integrations

---

**Remember**: Each platform has different requirements and timelines. Be patient, professional, and thorough in all communications.

**Update this README**: Keep the status tracker updated as you make progress with submissions.
