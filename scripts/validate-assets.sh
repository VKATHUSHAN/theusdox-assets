#!/bin/bash

# Asset Validation Script
# Simple validation of token assets and metadata

set -e

# Configuration
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TOKEN_ADDRESS="0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D"

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Emojis
CHECK="✅"
CROSS="❌"
WARN="⚠️"
INFO="ℹ️"

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

echo ""
echo -e "${BLUE}═══════════════════════════════════${NC}"
echo -e "${BLUE}  Asset Validation${NC}"
echo -e "${BLUE}═══════════════════════════════════${NC}"
echo ""

cd "$REPO_ROOT"

validation_failed=false

#######################################
# Check Decimals in info.json
#######################################

print_info "Checking decimals in TWUSD metadata..."

for json_file in contracts/twusd/token-info.json contracts/twusd/metadata.json; do
    if [ -f "$json_file" ]; then
        if command -v jq &> /dev/null; then
            decimals=$(jq -r '.decimals // empty' "$json_file" 2>/dev/null || echo "")
            
            if [ -z "$decimals" ]; then
                print_warning "No decimals field found in $json_file"
            elif [ "$decimals" = "6" ]; then
                print_success "Decimals correct in $json_file: $decimals"
            else
                print_error "Decimals incorrect in $json_file: $decimals (expected: 6)"
                validation_failed=true
            fi
        else
            print_warning "jq not installed, skipping JSON validation"
        fi
    else
        print_warning "File not found: $json_file"
    fi
done

echo ""

#######################################
# Check Logo Files
#######################################

print_info "Checking for required logo files..."

# Main token logo
logo_file="tokens/ethereum/${TOKEN_ADDRESS}/logo.png"
if [ -f "$logo_file" ]; then
    print_success "Main logo exists: $logo_file"
else
    print_warning "Main logo not found: $logo_file"
    print_info "This file will be created during Trust Wallet submission"
fi

# SVG logo
svg_file="tokens/ethereum/${TOKEN_ADDRESS}/logo.svg"
if [ -f "$svg_file" ]; then
    print_success "SVG logo exists: $svg_file"
else
    print_warning "SVG logo not found: $svg_file"
fi

# Branding logo
branding_logo="branding/logos/twusd-logo.png"
if [ -f "$branding_logo" ]; then
    print_success "Branding logo exists: $branding_logo"
    
    # Check file size if ImageMagick is available
    if command -v identify &> /dev/null; then
        dimensions=$(identify -format "%wx%h" "$branding_logo" 2>/dev/null || echo "unknown")
        print_info "  Dimensions: $dimensions"
        
        # Get file size
        if [[ "$OSTYPE" == "darwin"* ]]; then
            file_size=$(stat -f%z "$branding_logo")
        else
            file_size=$(stat -c%s "$branding_logo")
        fi
        file_size_kb=$((file_size / 1024))
        print_info "  File size: ${file_size_kb}KB"
    fi
else
    print_error "Branding logo not found: $branding_logo"
    validation_failed=true
fi

echo ""

#######################################
# Check Branding Assets
#######################################

print_info "Checking branding assets..."

branding_sizes=(256 512 1024)
all_branding_exist=true

for size in "${branding_sizes[@]}"; do
    branding_file="branding/logos/twusd-logo-${size}x${size}.png"
    if [ -f "$branding_file" ]; then
        print_success "Branding logo exists: ${size}x${size}"
    else
        print_warning "Optional branding logo not found: ${size}x${size}"
    fi
done

echo ""

#######################################
# Check JSON Structure
#######################################

print_info "Validating JSON structure..."

for json_file in contracts/twusd/*.json; do
    if [ -f "$json_file" ]; then
        if command -v jq &> /dev/null; then
            if jq empty "$json_file" 2>/dev/null; then
                print_success "Valid JSON: $(basename $json_file)"
            else
                print_error "Invalid JSON: $(basename $json_file)"
                validation_failed=true
            fi
        fi
    fi
done

echo ""

#######################################
# Summary
#######################################

echo -e "${BLUE}═══════════════════════════════════${NC}"
echo -e "${BLUE}  Validation Summary${NC}"
echo -e "${BLUE}═══════════════════════════════════${NC}"
echo ""

if [ "$validation_failed" = true ]; then
    print_error "Validation failed with errors"
    echo ""
    print_info "Please fix the errors above before proceeding"
    exit 1
else
    print_success "All critical validations passed!"
    echo ""
    print_info "Assets are ready for submission"
    echo ""
    print_info "Next steps:"
    echo "  1. Run 'make submit' to start wallet submissions"
    echo "  2. Or use individual submission commands"
    echo ""
fi

exit 0
