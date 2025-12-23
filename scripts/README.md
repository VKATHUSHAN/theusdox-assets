# Automation Scripts Documentation

This directory contains automation scripts for streamlining TWUSD token submissions across multiple wallet platforms and exchanges.

## 📋 Overview

The automation suite reduces manual submission time from **50-75 minutes** to just a few minutes by automating:

- Trust Wallet repository preparation
- Email template generation
- Web form population assistance
- Submission status tracking
- Asset validation

## 🚀 Quick Start

### Prerequisites

Install required tools:

```bash
# macOS
brew install git jq imagemagick gh

# Ubuntu/Debian
sudo apt-get install git jq imagemagick gh

# Verify installations
git --version
jq --version
convert -version
gh --version
```

### Authentication Setup

```bash
# Authenticate GitHub CLI (required for PR completion)
gh auth login

# Follow the prompts to authenticate
```

### First Time Usage

```bash
# 1. Validate assets
make validate

# 2. Run submission automation
make submit

# 3. Push to Trust Wallet (after preparing submission)
make trust

# 4. Complete PR (when ready to merge)
make complete
```

## 📁 Scripts

### 1. `automate-submissions.sh`

**Main submission automation script with interactive menu.**

**Features:**
- Interactive menu system
- Trust Wallet repository preparation
- Etherscan submission helper
- CoinGecko email template generator
- CoinMarketCap portal helper
- Submission status report generator

**Usage:**
```bash
# Interactive mode
./scripts/automate-submissions.sh

# Or via Makefile
make submit
```

**Menu Options:**
1. Submit to Trust Wallet - Prepares GitHub PR
2. Submit to Etherscan - Opens web form
3. Submit to CoinGecko - Generates email template
4. Submit to CoinMarketCap - Opens submission portal
5. Generate submission report
6. Run all submissions
0. Exit

**Configuration:**
- Token Address: `0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D`
- Token Symbol: `TWUSD`
- Decimals: `6`
- Network: Ethereum Mainnet

### 2. `push-to-trust-wallet.sh`

**Pushes prepared Trust Wallet branch to your fork.**

**Features:**
- Validates Trust Wallet repository preparation
- Verifies correct branch
- Manages git remotes
- Pushes to fork
- Generates PR creation link

**Usage:**
```bash
# After preparing Trust Wallet submission
./scripts/push-to-trust-wallet.sh

# Or via Makefile
make trust
```

**Steps:**
1. Checks if Trust Wallet repo is prepared
2. Prompts for fork URL
3. Adds/updates fork as git remote
4. Pushes branch to fork
5. Displays PR creation URL

**Example:**
```bash
$ make trust
Enter your fork's URL: https://github.com/YOUR_USERNAME/assets.git
✓ Branch pushed successfully!

Next steps:
  1. Create a Pull Request on GitHub:
     https://github.com/trustwallet/assets/compare/master...YOUR_USERNAME:add-twusd-0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D
```

### 3. `complete-pr.sh`

**Completes and merges PR using GitHub CLI.**

**Features:**
- Checks GitHub CLI authentication
- Displays PR status
- Shows review status
- Checks CI status
- Merges PR with squash/merge/rebase
- Deletes branch after merge

**Usage:**
```bash
./scripts/complete-pr.sh

# Or via Makefile
make complete
```

**What it does:**
1. Verifies `gh` CLI is installed and authenticated
2. Fetches PR #3 status
3. Displays current reviews and CI status
4. Prompts to mark as ready (if draft)
5. Prompts to merge PR
6. Merges and deletes branch

**Merge Methods:**
- **Squash and merge** (recommended) - Combines all commits into one
- **Create a merge commit** - Preserves all commits in merge commit
- **Rebase and merge** - Replays commits on top of base branch

### 4. `validate-assets.sh`

**Validates token assets and metadata.**

**Features:**
- Checks decimals = 6 in JSON files
- Verifies logo file existence
- Validates JSON structure
- Checks file dimensions (if ImageMagick available)
- Reports file sizes

**Usage:**
```bash
./scripts/validate-assets.sh

# Or via Makefile
make validate
```

**Validations:**
- ✅ TWUSD decimals = 6
- ✅ Main logo exists
- ✅ Branding logo exists
- ✅ JSON files are valid
- ✅ File dimensions and sizes

**Output Example:**
```bash
✓ Decimals correct in contracts/twusd/token-info.json: 6
✓ Branding logo exists: branding/logos/twusd-logo.png
  Dimensions: 800x800
  File size: 78KB
✓ Valid JSON: token-info.json
✓ All critical validations passed!
```

## 🔄 Workflow Examples

### Complete PR and Start Submissions

```bash
# 1. Complete the PR
make complete

# 2. Validate assets
make validate

# 3. Start submissions
make submit
```

### Individual Platform Submissions

```bash
# Only Trust Wallet
make submit
# Select option 1

# Only CoinGecko
make submit
# Select option 3

# Only generate report
make report
```

### Trust Wallet Complete Flow

```bash
# 1. Prepare Trust Wallet submission
make submit
# Select option 1

# 2. Push to your fork
make trust

# 3. Create PR on GitHub (follow link)

# 4. Track status
make report
```

## 🛠️ Troubleshooting

### GitHub CLI Not Authenticated

**Error:**
```
✗ Not authenticated with GitHub CLI
```

**Solution:**
```bash
gh auth login
# Follow prompts to authenticate
```

### ImageMagick Not Installed

**Warning:**
```
⚠ ImageMagick (convert) is not installed
```

**Solution:**
```bash
# macOS
brew install imagemagick

# Ubuntu/Debian
sudo apt-get install imagemagick

# Verify
convert -version
```

### Permission Denied

**Error:**
```
bash: ./scripts/automate-submissions.sh: Permission denied
```

**Solution:**
```bash
# Make scripts executable
chmod +x scripts/*.sh

# Or use Makefile (handles permissions)
make submit
```

### Trust Wallet Branch Already Exists

**Warning:**
```
⚠ Branch already exists, switching to it
```

**Solution:**
```bash
# Remove and start fresh
rm -rf temp/trustwallet-assets

# Run submission again
make submit
# Select option 1
```

### Fork URL Format Error

**Error:**
```
URL doesn't match expected format
```

**Expected Format:**
```
https://github.com/YOUR_USERNAME/assets.git
```

**Get Your Fork URL:**
1. Fork: https://github.com/trustwallet/assets
2. Copy URL from your fork page
3. Use format: `https://github.com/YOUR_USERNAME/assets.git`

### Network Connection Issues

**Error during git push:**

**Solutions:**
1. Check internet connection
2. Verify GitHub credentials
3. Try SSH instead of HTTPS:
   ```bash
   git remote set-url fork git@github.com:YOUR_USERNAME/assets.git
   ```

## 📋 Platform-Specific Notes

### Trust Wallet

**Requirements:**
- Logo: 256x256px PNG with transparency
- File size: < 100KB
- Format: info.json following Trust Wallet schema

**Review Time:** 3-5 business days

**Tips:**
- Ensure logo has transparent background
- Follow Trust Wallet's contribution guidelines
- Respond promptly to review feedback

### Etherscan

**Submission Method:** Web form (manual)

**Required Information:**
- Contract address
- Token logo URL (PNG, 256x256 or larger)
- Official website
- Social media links

**Tips:**
- Use GitHub raw URL for logo
- Logo should be square and high quality
- Update can take 24-48 hours

### CoinGecko

**Submission Method:** Email or web form

**Email To:** listings@coingecko.com

**Required Information:**
- Token details (name, symbol, address)
- Logo (transparent PNG)
- Website and documentation
- Social media links
- Block explorer links

**Review Time:** 1-2 weeks

**Tips:**
- Use generated email template
- Include all links
- Provide comprehensive description

### CoinMarketCap

**Submission Method:** Support portal (manual)

**Portal:** https://support.coinmarketcap.com/hc/en-us/requests/new

**Required Information:**
- Token details
- Logo (200x200 PNG minimum)
- Website and social links
- Contract address
- Block explorer link

**Review Time:** 1-2 weeks

**Tips:**
- Complete all required fields
- Use high-quality logo
- Provide accurate information

## 📊 Generated Files

### Submission Report

**Location:** `wallet-submissions/SUBMISSION_STATUS.md`

**Content:**
- Submission checklist
- Platform status table
- Quick links
- File locations
- Update instructions

**Regenerate:**
```bash
make report
```

### CoinGecko Email Template

**Location:** `wallet-submissions/coingecko-submission-email.txt`

**Contains:**
- Pre-filled email template
- All token information
- Required links
- Professional format

## 🎯 Best Practices

1. **Always validate first:** Run `make validate` before submissions
2. **Use the Makefile:** Commands handle permissions and paths automatically
3. **Track progress:** Update submission report after each platform
4. **Keep fork updated:** Sync Trust Wallet fork before new submissions
5. **Save responses:** Document any feedback from platforms

## 🔐 Security Notes

- Scripts never store credentials
- GitHub CLI manages authentication securely
- Always review generated content before submission
- Don't commit sensitive information to repository

## 📝 Maintenance

### Update Token Information

Edit configuration in `scripts/automate-submissions.sh`:

```bash
TOKEN_ADDRESS="0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D"
TOKEN_SYMBOL="TWUSD"
TOKEN_NAME="TheUSDOX Wrapped Dollar EVM"
WEBSITE="https://theusdox.com"
DECIMALS=6
```

### Add New Platform

1. Create function in `automate-submissions.sh`
2. Add menu option
3. Update documentation
4. Test thoroughly

## 🆘 Getting Help

**Issues:**
- Check troubleshooting section above
- Review script output for specific errors
- Ensure all prerequisites are installed

**Questions:**
- Open issue on GitHub
- Check platform-specific documentation
- Review automation script comments

## 📄 License

MIT License - See repository LICENSE file

---

**💡 Time Savings:** This automation reduces submission time from 50-75 minutes to ~5-10 minutes per cycle.
