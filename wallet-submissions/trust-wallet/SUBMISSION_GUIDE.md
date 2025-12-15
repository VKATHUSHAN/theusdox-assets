# Trust Wallet Token Logo Submission Guide

Complete guide for submitting TWUSD token logo to Trust Wallet assets repository.

## 📋 Requirements

### Image Specifications
- **Format**: PNG with transparent background
- **Size**: 256x256 pixels (exact)
- **Maximum File Size**: 100KB
- **File Name**: `logo.png` (lowercase)
- **Transparency**: Required (alpha channel)
- **Aspect Ratio**: 1:1 (square)

### Repository Requirements
- GitHub account (to fork and create PR)
- Basic knowledge of Git and GitHub
- Token contract deployed on Ethereum or other supported chain
- Token has on-chain activity

## 🚀 Submission Process

### Step 1: Prepare Your Logo

Use the 256x256px optimized logo from this repository:
```
/branding/twusd/logo-256x256.png
```

**Specifications:**
- ✅ 256x256 pixels (exact)
- ✅ PNG format
- ✅ Transparent background
- ✅ < 20KB file size
- ✅ High quality, optimized

### Step 2: Fork Trust Wallet Assets Repository

1. Visit the Trust Wallet assets repository:
   **[https://github.com/trustwallet/assets](https://github.com/trustwallet/assets)**

2. Click the "Fork" button in the top-right corner

3. This creates a copy of the repository in your GitHub account

### Step 3: Create Folder Structure

In your forked repository, create the following folder structure:

```
blockchains/ethereum/assets/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D/
```

**Important Notes:**
- Use **checksum format** for the address (mixed case)
- Create all folders if they don't exist
- Folder name must exactly match the contract address

### Step 4: Add Required Files

Add two files to the folder:

#### 1. logo.png
Copy the 256x256px logo from `/branding/twusd/logo-256x256.png`

#### 2. info.json
Create `info.json` with the following content:

```json
{
  "name": "TheUSDOX Wrapped Dollar EVM",
  "type": "ERC20",
  "symbol": "TWUSD",
  "decimals": 18,
  "website": "",
  "description": "TheUSDOX Wrapped Dollar EVM token",
  "explorer": "https://etherscan.io/token/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D",
  "status": "active",
  "id": "0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D",
  "links": [
    {
      "name": "etherscan",
      "url": "https://etherscan.io/token/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D"
    }
  ]
}
```

### Step 5: Validate Your Submission

Run the Trust Wallet validation script (if available):

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/assets.git
cd assets

# Install dependencies
npm install

# Run validation
npm run check
```

This will verify:
- File sizes are within limits
- Images are correctly formatted
- JSON files are valid
- Folder structure is correct

### Step 6: Commit Your Changes

```bash
# Add files
git add blockchains/ethereum/assets/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D/

# Commit with descriptive message
git commit -m "Add TWUSD (0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D)"

# Push to your fork
git push origin master
```

### Step 7: Create Pull Request

1. Go to your forked repository on GitHub
2. Click "Pull Request" button
3. Click "New Pull Request"
4. Ensure base repository is `trustwallet/assets` and base branch is `master`
5. Your fork and branch should be selected automatically
6. Click "Create Pull Request"

#### PR Title Format:
```
Add TWUSD (0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D)
```

#### PR Description Template:
```markdown
## Overview
Adding logo and metadata for TWUSD (TheUSDOX Wrapped Dollar EVM) token.

## Token Information
- **Name**: TheUSDOX Wrapped Dollar EVM
- **Symbol**: TWUSD
- **Type**: ERC20
- **Decimals**: 18
- **Contract**: 0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D
- **Network**: Ethereum Mainnet
- **Explorer**: https://etherscan.io/token/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D

## Checklist
- [x] Logo is 256x256 PNG
- [x] File size < 100KB
- [x] Transparent background
- [x] Checksum address used
- [x] info.json file included
- [x] All automated checks pass

## Additional Notes
Official token from TheUSDOX ecosystem. All assets verified and optimized.
```

### Step 8: Wait for Automated Checks

After creating the PR:
1. GitHub Actions will run automated checks
2. Checks validate image size, format, and JSON structure
3. All checks must pass (green checkmarks)

**If checks fail:**
- Review the error messages
- Fix the issues in your fork
- Push the fixes (PR will update automatically)

### Step 9: Wait for Review

- **Review Time**: Can take 1-7 days or longer
- **Communication**: Respond promptly to any reviewer comments
- **Updates**: Make requested changes if any

### Step 10: After Merge

Once your PR is merged:
1. Logo will appear in Trust Wallet within 24-48 hours
2. Users will see the logo when holding TWUSD
3. Logo will show in transaction history
4. Update integration status in this repository

## ⚠️ Common Issues & Troubleshooting

### Issue: Automated Checks Fail - Image Size
**Solution:** Image must be exactly 256x256 pixels. Use the provided logo.

### Issue: Automated Checks Fail - File Size
**Solution:** File must be < 100KB. The provided logo is ~17KB (well within limit).

### Issue: Wrong Contract Address Case
**Solution:** Use checksum format (mixed case):
```
✅ 0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D
❌ 0x7beb51807e3c8bdb10a2868bd51c2d9e1764925d
```

You can get the checksum address from:
- Etherscan (copy from token page)
- Web3 libraries: `Web3.utils.toChecksumAddress(address)`

### Issue: Invalid JSON
**Solution:** Validate your `info.json` file:
```bash
# Using Python
python -m json.tool info.json

# Using Node.js
node -e "JSON.parse(require('fs').readFileSync('info.json'))"
```

### Issue: PR Conflicts
**Solution:** Sync your fork with upstream:
```bash
# Add upstream remote
git remote add upstream https://github.com/trustwallet/assets.git

# Fetch upstream changes
git fetch upstream

# Merge upstream changes
git merge upstream/master

# Push to your fork
git push origin master
```

## 📧 Getting Help

If you encounter issues:
- **GitHub Discussions**: [Trust Wallet Assets Discussions](https://github.com/trustwallet/assets/discussions)
- **Review PR Examples**: Look at merged PRs for reference
- **Discord/Telegram**: Check Trust Wallet community channels

## 🔗 Related Documentation

- [Trust Wallet Assets Repository](https://github.com/trustwallet/assets)
- [Trust Wallet Developer Docs](https://developer.trustwallet.com/)
- [Submission Checklist](./checklist.md)
- [Etherscan Submission Guide](../etherscan/SUBMISSION_GUIDE.md)

## 📝 Notes

- Trust Wallet maintainers are volunteers - be patient
- Keep your PR description clear and concise
- Respond quickly to feedback
- Once merged, it may take up to 48 hours for the logo to appear in the app
- Trust Wallet updates are pushed through app updates

## 📊 Expected Timeline

| Stage | Time |
|-------|------|
| PR Creation | Immediate |
| Automated Checks | 1-5 minutes |
| Initial Review | 1-7 days |
| Revisions (if needed) | 1-3 days |
| Final Approval | 1-2 days |
| Logo Live in App | 24-48 hours after merge |

---

**Pro Tip**: Submit during weekdays for faster review. Maintain a professional tone in all communications.
