#!/bin/bash

# TWUSD Token Submission Automation Script
# Streamlines wallet and exchange submissions across multiple platforms

set -e

# Configuration
TOKEN_ADDRESS="0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D"
TOKEN_SYMBOL="TWUSD"
TOKEN_NAME="TheUSDOX Wrapped Dollar EVM"
WEBSITE="https://theusdox.com"
DECIMALS=6
CHAIN_ID=1
TOTAL_SUPPLY="1000000"

# Directories
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TEMP_DIR="$REPO_ROOT/temp"
TRUSTWALLET_DIR="$TEMP_DIR/trustwallet-assets"
REPORTS_DIR="$REPO_ROOT/wallet-submissions"

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Emojis
CHECK="✅"
CROSS="❌"
WARN="⚠️"
INFO="ℹ️"
ROCKET="🚀"
PACKAGE="📦"
EMAIL="📧"
WEB="🌐"

#######################################
# Helper Functions
#######################################

print_header() {
    echo -e "\n${BLUE}================================${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}================================${NC}\n"
}

print_success() {
    echo -e "${GREEN}${CHECK} $1${NC}"
}

print_error() {
    echo -e "${RED}${CROSS} $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}${WARN} $1${NC}"
}

print_info() {
    echo -e "${BLUE}${INFO} $1${NC}"
}

#######################################
# Check Prerequisites
#######################################

check_prerequisites() {
    print_header "Checking Prerequisites"
    
    local missing_tools=()
    
    # Check for required tools
    if ! command -v git &> /dev/null; then
        missing_tools+=("git")
    else
        print_success "git is installed"
    fi
    
    if ! command -v jq &> /dev/null; then
        missing_tools+=("jq")
    else
        print_success "jq is installed"
    fi
    
    if ! command -v curl &> /dev/null; then
        missing_tools+=("curl")
    else
        print_success "curl is installed"
    fi
    
    if ! command -v convert &> /dev/null; then
        print_warning "ImageMagick (convert) is not installed"
        print_info "ImageMagick is recommended for logo resizing"
        print_info "Install on macOS: brew install imagemagick"
        print_info "Install on Linux: sudo apt-get install imagemagick"
    else
        print_success "ImageMagick is installed"
    fi
    
    if [ ${#missing_tools[@]} -gt 0 ]; then
        print_error "Missing required tools: ${missing_tools[*]}"
        echo ""
        print_info "Please install missing tools and try again"
        return 1
    fi
    
    print_success "All required tools are available"
    return 0
}

#######################################
# Trust Wallet Submission
#######################################

submit_to_trust_wallet() {
    print_header "${PACKAGE} Trust Wallet Submission Preparation"
    
    # Create temp directory
    mkdir -p "$TEMP_DIR"
    
    # Check if Trust Wallet repo already exists
    if [ -d "$TRUSTWALLET_DIR" ]; then
        print_warning "Trust Wallet repository already exists at $TRUSTWALLET_DIR"
        read -p "Do you want to remove it and clone fresh? (y/n) " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            rm -rf "$TRUSTWALLET_DIR"
        else
            print_info "Using existing Trust Wallet repository"
        fi
    fi
    
    # Clone Trust Wallet assets repo
    if [ ! -d "$TRUSTWALLET_DIR" ]; then
        print_info "Cloning Trust Wallet assets repository..."
        git clone https://github.com/trustwallet/assets.git "$TRUSTWALLET_DIR"
        print_success "Repository cloned"
    fi
    
    cd "$TRUSTWALLET_DIR"
    
    # Create branch
    local branch_name="add-twusd-${TOKEN_ADDRESS}"
    print_info "Creating branch: $branch_name"
    
    git checkout master 2>/dev/null || git checkout main
    git pull origin master 2>/dev/null || git pull origin main
    
    if git rev-parse --verify "$branch_name" >/dev/null 2>&1; then
        print_warning "Branch already exists, switching to it"
        git checkout "$branch_name"
    else
        git checkout -b "$branch_name"
        print_success "Branch created"
    fi
    
    # Create token directory
    local token_dir="blockchains/ethereum/assets/${TOKEN_ADDRESS}"
    mkdir -p "$token_dir"
    print_success "Token directory created: $token_dir"
    
    # Copy and resize logo
    local source_logo="$REPO_ROOT/branding/logos/twusd-logo.png"
    local dest_logo="$token_dir/logo.png"
    
    if [ -f "$source_logo" ]; then
        if command -v convert &> /dev/null; then
            print_info "Resizing logo to 256x256px..."
            convert "$source_logo" -resize 256x256 -background none -gravity center -extent 256x256 "$dest_logo"
            print_success "Logo resized and copied"
        else
            print_warning "ImageMagick not available, copying logo without resizing"
            cp "$source_logo" "$dest_logo"
        fi
    else
        print_error "Source logo not found: $source_logo"
        return 1
    fi
    
    # Create info.json
    local info_json="$token_dir/info.json"
    print_info "Creating info.json..."
    
    cat > "$info_json" << EOF
{
  "name": "$TOKEN_NAME",
  "type": "ERC20",
  "symbol": "$TOKEN_SYMBOL",
  "decimals": $DECIMALS,
  "website": "$WEBSITE",
  "description": "TheUSDOX Wrapped Dollar (TWUSD) is a stablecoin token in the TheUSDOX ecosystem, providing stable value and utility across decentralized finance applications.",
  "explorer": "https://etherscan.io/token/${TOKEN_ADDRESS}",
  "status": "active",
  "id": "${TOKEN_ADDRESS}",
  "links": [
    {
      "name": "github",
      "url": "https://github.com/VKATHUSHAN/theusdox-assets"
    },
    {
      "name": "twitter",
      "url": "https://twitter.com/theusdox"
    },
    {
      "name": "coinmarketcap",
      "url": "https://coinmarketcap.com/"
    }
  ]
}
EOF
    
    print_success "info.json created"
    
    # Stage files
    git add "$token_dir"
    
    # Create commit
    print_info "Creating commit..."
    git commit -m "Add TWUSD token (${TOKEN_ADDRESS})

Token: TheUSDOX Wrapped Dollar EVM (TWUSD)
Type: ERC20
Address: ${TOKEN_ADDRESS}
Decimals: ${DECIMALS}
Website: ${WEBSITE}

This is the wrapped USD token for the TheUSDOX ecosystem."
    
    print_success "Commit created"
    
    echo ""
    print_success "Trust Wallet preparation complete!"
    echo ""
    print_info "Next steps:"
    echo "  1. Run 'make trust' or 'scripts/push-to-trust-wallet.sh' to push to your fork"
    echo "  2. Create a pull request on GitHub"
    echo "  3. Wait for Trust Wallet team review"
    echo ""
    
    cd "$REPO_ROOT"
}

#######################################
# Etherscan Submission
#######################################

submit_to_etherscan() {
    print_header "${WEB} Etherscan Token Submission"
    
    print_info "Etherscan requires manual submission via their web form"
    echo ""
    echo "Token Information:"
    echo "  Address: $TOKEN_ADDRESS"
    echo "  Name: $TOKEN_NAME"
    echo "  Symbol: $TOKEN_SYMBOL"
    echo "  Decimals: $DECIMALS"
    echo ""
    
    # Prepare logo URL
    local logo_url="https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/twusd-logo.png"
    echo "  Logo URL: $logo_url"
    echo "  Website: $WEBSITE"
    echo ""
    
    print_info "Opening Etherscan update token info page..."
    
    # Open web browser
    local etherscan_url="https://etherscan.io/address/${TOKEN_ADDRESS}#tokenInfo"
    
    if command -v xdg-open &> /dev/null; then
        xdg-open "$etherscan_url" 2>/dev/null || true
    elif command -v open &> /dev/null; then
        open "$etherscan_url" 2>/dev/null || true
    else
        print_warning "Cannot open browser automatically"
        echo "Please visit: $etherscan_url"
    fi
    
    echo ""
    print_success "Information prepared for Etherscan submission"
}

#######################################
# CoinGecko Submission
#######################################

submit_to_coingecko() {
    print_header "${EMAIL} CoinGecko Email Template"
    
    local email_file="$REPORTS_DIR/coingecko-submission-email.txt"
    mkdir -p "$REPORTS_DIR"
    
    cat > "$email_file" << 'EOF'
Subject: Token Listing Request - TWUSD (TheUSDOX Wrapped Dollar EVM)

Dear CoinGecko Team,

I would like to submit our token for listing on CoinGecko.

**Token Information:**
- Token Name: TheUSDOX Wrapped Dollar EVM
- Token Symbol: TWUSD
- Contract Address: 0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D
- Network: Ethereum (ERC20)
- Decimals: 6
- Total Supply: 1,000,000 TWUSD

**Project Information:**
- Project Name: TheUSDOX
- Website: https://theusdox.com
- Documentation: https://docs.theusdox.com
- GitHub: https://github.com/VKATHUSHAN/theusdox-assets

**Social Media:**
- Twitter: https://twitter.com/theusdox

**Token Description:**
TheUSDOX Wrapped Dollar (TWUSD) is a stablecoin token in the TheUSDOX ecosystem, providing stable value and utility across decentralized finance applications. It serves as a wrapped representation of USD value within our ecosystem.

**Logo:**
https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/twusd-logo.png

**Block Explorer:**
https://etherscan.io/token/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D

**Additional Information:**
- The token is actively used in the TheUSDOX ecosystem
- We have comprehensive documentation and branding assets
- The project is open source and transparent

Please let me know if you need any additional information.

Best regards,
TheUSDOX Team
EOF
    
    print_success "Email template created: $email_file"
    echo ""
    print_info "Email should be sent to: listings@coingecko.com"
    echo ""
    print_info "You can also use CoinGecko's request form:"
    echo "  https://www.coingecko.com/en/coins/new"
    echo ""
    
    # Open email template
    if command -v cat &> /dev/null; then
        echo "Email template content:"
        echo "----------------------------------------"
        cat "$email_file"
        echo "----------------------------------------"
    fi
}

#######################################
# CoinMarketCap Submission
#######################################

submit_to_coinmarketcap() {
    print_header "${WEB} CoinMarketCap Portal Instructions"
    
    echo "CoinMarketCap requires submission through their portal:"
    echo ""
    echo "1. Visit: https://support.coinmarketcap.com/hc/en-us/requests/new"
    echo "2. Select 'Add Cryptocurrency'"
    echo "3. Fill in the form with following information:"
    echo ""
    echo "   Token Information:"
    echo "   - Project Name: TheUSDOX"
    echo "   - Token Symbol: $TOKEN_SYMBOL"
    echo "   - Contract Address: $TOKEN_ADDRESS"
    echo "   - Network: Ethereum"
    echo "   - Token Type: ERC20"
    echo "   - Decimals: $DECIMALS"
    echo ""
    echo "   Project Links:"
    echo "   - Website: $WEBSITE"
    echo "   - Documentation: https://docs.theusdox.com"
    echo "   - GitHub: https://github.com/VKATHUSHAN/theusdox-assets"
    echo "   - Twitter: https://twitter.com/theusdox"
    echo ""
    echo "   Logo URL:"
    echo "   - https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/twusd-logo.png"
    echo ""
    echo "   Explorer:"
    echo "   - https://etherscan.io/token/$TOKEN_ADDRESS"
    echo ""
    
    print_info "Opening CoinMarketCap submission portal..."
    
    local cmc_url="https://support.coinmarketcap.com/hc/en-us/requests/new"
    
    if command -v xdg-open &> /dev/null; then
        xdg-open "$cmc_url" 2>/dev/null || true
    elif command -v open &> /dev/null; then
        open "$cmc_url" 2>/dev/null || true
    else
        print_warning "Cannot open browser automatically"
        echo "Please visit: $cmc_url"
    fi
    
    echo ""
    print_success "Instructions displayed for CoinMarketCap submission"
}

#######################################
# Generate Report
#######################################

generate_report() {
    print_header "📊 Generating Submission Status Report"
    
    mkdir -p "$REPORTS_DIR"
    local report_file="$REPORTS_DIR/SUBMISSION_STATUS.md"
    
    cat > "$report_file" << 'EOF'
# TWUSD Token Submission Status

This document tracks the status of TWUSD token submissions across various wallets and platforms.

## Token Information

- **Token Name**: TheUSDOX Wrapped Dollar EVM
- **Symbol**: TWUSD
- **Contract Address**: `0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D`
- **Network**: Ethereum (Mainnet)
- **Decimals**: 6
- **Token Type**: ERC20

## Submission Checklist

### Wallets
- [ ] Trust Wallet - PR Created
- [ ] Trust Wallet - PR Merged
- [ ] MetaMask
- [ ] Coinbase Wallet

### Explorers & Listings
- [ ] Etherscan - Token Info Updated
- [ ] Etherscan - Logo Uploaded
- [ ] CoinGecko - Submitted
- [ ] CoinGecko - Listed
- [ ] CoinMarketCap - Submitted
- [ ] CoinMarketCap - Listed

### DEX Listings
- [ ] Uniswap Token List
- [ ] 1inch Token List
- [ ] SushiSwap Token List

## Platform Status

| Platform | Status | Submitted | Listed | Notes |
|----------|--------|-----------|--------|-------|
| Trust Wallet | 🟡 In Progress | - | - | PR being prepared |
| Etherscan | ⚪ Not Started | - | - | Awaiting submission |
| CoinGecko | ⚪ Not Started | - | - | Awaiting submission |
| CoinMarketCap | ⚪ Not Started | - | - | Awaiting submission |
| MetaMask | ⚪ Not Started | - | - | Awaiting submission |

**Status Legend:**
- ⚪ Not Started
- 🟡 In Progress
- 🟢 Completed
- 🔴 Rejected/Issues

## Quick Links

### Submission Portals
- [Etherscan Update Token Info](https://etherscan.io/address/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D#tokenInfo)
- [CoinGecko Request Form](https://www.coingecko.com/en/coins/new)
- [CoinMarketCap Support](https://support.coinmarketcap.com/hc/en-us/requests/new)
- [Trust Wallet Assets Repo](https://github.com/trustwallet/assets)

### Documentation
- [Website](https://theusdox.com)
- [GitHub Repository](https://github.com/VKATHUSHAN/theusdox-assets)
- [Etherscan](https://etherscan.io/token/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D)

## File Locations

### Logos
- Main Logo: `branding/logos/twusd-logo.png`
- Trust Wallet Format: 256x256px PNG
- SVG Version: (to be created)

### Metadata
- Token Info: `contracts/twusd/token-info.json`
- Contract Metadata: `contracts/twusd/metadata.json`
- ABI: `contracts/twusd/abi.json`

## Update Instructions

When updating this document:

1. Change status from ⚪ to 🟡 when submission starts
2. Update "Submitted" column with date
3. Change status to 🟢 when listed
4. Update "Listed" column with date
5. Add any notes or PR links in the Notes column
6. Check off items in the Submission Checklist

## Last Updated

Generated: [Date to be updated manually]

---

*This document is automatically generated. Use `make report` to regenerate.*
EOF
    
    print_success "Report generated: $report_file"
    echo ""
    print_info "View the report at: $report_file"
    echo ""
}

#######################################
# Run All Submissions
#######################################

run_all_submissions() {
    print_header "${ROCKET} Running All Submissions"
    
    print_info "This will prepare all submissions in sequence"
    echo ""
    
    read -p "Continue? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        print_warning "Cancelled by user"
        return
    fi
    
    submit_to_trust_wallet
    echo ""
    read -p "Press Enter to continue to Etherscan..." 
    
    submit_to_etherscan
    echo ""
    read -p "Press Enter to continue to CoinGecko..."
    
    submit_to_coingecko
    echo ""
    read -p "Press Enter to continue to CoinMarketCap..."
    
    submit_to_coinmarketcap
    echo ""
    
    generate_report
    
    print_success "All submissions prepared!"
}

#######################################
# Main Menu
#######################################

show_menu() {
    clear
    echo -e "${BLUE}╔═══════════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║                                                       ║${NC}"
    echo -e "${BLUE}║        ${GREEN}TWUSD Token Submission Automation${BLUE}          ║${NC}"
    echo -e "${BLUE}║                                                       ║${NC}"
    echo -e "${BLUE}╚═══════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}Token:${NC} $TOKEN_NAME ($TOKEN_SYMBOL)"
    echo -e "${YELLOW}Address:${NC} $TOKEN_ADDRESS"
    echo ""
    echo "Select an option:"
    echo ""
    echo "  1. ${PACKAGE} Submit to Trust Wallet (prepare GitHub PR)"
    echo "  2. ${WEB} Submit to Etherscan (open web form)"
    echo "  3. ${EMAIL} Submit to CoinGecko (generate email)"
    echo "  4. ${WEB} Submit to CoinMarketCap (open portal)"
    echo "  5. 📊 Generate submission report"
    echo "  6. ${ROCKET} Run all submissions"
    echo "  0. ${CROSS} Exit"
    echo ""
}

#######################################
# Main Script
#######################################

main() {
    # Check prerequisites first
    if ! check_prerequisites; then
        exit 1
    fi
    
    while true; do
        show_menu
        read -p "Enter your choice [0-6]: " choice
        
        case $choice in
            1)
                submit_to_trust_wallet
                echo ""
                read -p "Press Enter to continue..."
                ;;
            2)
                submit_to_etherscan
                echo ""
                read -p "Press Enter to continue..."
                ;;
            3)
                submit_to_coingecko
                echo ""
                read -p "Press Enter to continue..."
                ;;
            4)
                submit_to_coinmarketcap
                echo ""
                read -p "Press Enter to continue..."
                ;;
            5)
                generate_report
                echo ""
                read -p "Press Enter to continue..."
                ;;
            6)
                run_all_submissions
                echo ""
                read -p "Press Enter to continue..."
                ;;
            0)
                print_info "Exiting..."
                exit 0
                ;;
            *)
                print_error "Invalid option. Please try again."
                sleep 2
                ;;
        esac
    done
}

# Run main function
main
