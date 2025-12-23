#!/bin/bash

# Trust Wallet Push Script
# Pushes prepared Trust Wallet branch to your fork

set -e

# Configuration
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TEMP_DIR="$REPO_ROOT/temp"
TRUSTWALLET_DIR="$TEMP_DIR/trustwallet-assets"
TOKEN_ADDRESS="0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D"
BRANCH_NAME="add-twusd-${TOKEN_ADDRESS}"

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
ROCKET="🚀"

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

print_header "${ROCKET} Trust Wallet Fork Push"

# Check if Trust Wallet directory exists
if [ ! -d "$TRUSTWALLET_DIR" ]; then
    print_error "Trust Wallet repository not found at: $TRUSTWALLET_DIR"
    echo ""
    print_info "Please run the submission preparation first:"
    echo "  make submit"
    echo "  OR"
    echo "  ./scripts/automate-submissions.sh"
    echo ""
    exit 1
fi

cd "$TRUSTWALLET_DIR"

# Check if we're on the correct branch
current_branch=$(git rev-parse --abbrev-ref HEAD)
if [ "$current_branch" != "$BRANCH_NAME" ]; then
    print_error "Not on the correct branch"
    print_info "Current branch: $current_branch"
    print_info "Expected branch: $BRANCH_NAME"
    echo ""
    read -p "Do you want to switch to the correct branch? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        git checkout "$BRANCH_NAME" || {
            print_error "Failed to switch branch"
            exit 1
        }
        print_success "Switched to branch: $BRANCH_NAME"
    else
        exit 1
    fi
fi

print_success "On correct branch: $BRANCH_NAME"

# Check if there are uncommitted changes
if ! git diff-index --quiet HEAD --; then
    print_warning "There are uncommitted changes"
    echo ""
    git status --short
    echo ""
    print_info "Please commit your changes first"
    exit 1
fi

# Get fork URL
echo ""
print_info "You need to push this branch to YOUR fork of trustwallet/assets"
echo ""
echo "If you haven't forked the repository yet:"
echo "  1. Visit: https://github.com/trustwallet/assets"
echo "  2. Click the 'Fork' button"
echo "  3. Wait for the fork to complete"
echo ""

# Check existing remotes
print_info "Current git remotes:"
git remote -v
echo ""

# Ask for fork URL
read -p "Enter your fork's URL (e.g., https://github.com/YOUR_USERNAME/assets.git): " fork_url

if [ -z "$fork_url" ]; then
    print_error "Fork URL cannot be empty"
    exit 1
fi

# Validate URL format
if [[ ! "$fork_url" =~ ^https://github.com/.+/.+\.git$ ]] && [[ ! "$fork_url" =~ ^git@github.com:.+/.+\.git$ ]]; then
    print_warning "URL doesn't match expected format"
    print_info "Expected format: https://github.com/USERNAME/assets.git"
    read -p "Continue anyway? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Add fork as remote if it doesn't exist
if git remote | grep -q "^fork$"; then
    print_info "Remote 'fork' already exists, updating URL..."
    git remote set-url fork "$fork_url"
else
    print_info "Adding fork as remote..."
    git remote add fork "$fork_url"
fi

print_success "Fork remote configured"

# Fetch from fork
print_info "Fetching from fork..."
git fetch fork || {
    print_error "Failed to fetch from fork"
    print_info "Please verify:"
    echo "  1. The fork URL is correct"
    echo "  2. You have access to the repository"
    echo "  3. Your git credentials are configured"
    exit 1
}

print_success "Fetched from fork"

# Push branch to fork
echo ""
print_info "Pushing branch '$BRANCH_NAME' to your fork..."
echo ""

if git push -u fork "$BRANCH_NAME"; then
    print_success "Branch pushed successfully!"
else
    print_error "Failed to push branch"
    echo ""
    print_info "Common issues:"
    echo "  1. Authentication failed - check your git credentials"
    echo "  2. Branch already exists on fork - use 'git push -f fork $BRANCH_NAME'"
    echo "  3. Network connection issues"
    exit 1
fi

# Extract username from fork URL
username=$(echo "$fork_url" | sed -E 's|https://github.com/([^/]+)/.*|\1|' | sed -E 's|git@github.com:([^/]+)/.*|\1|')

# Generate PR URL
pr_url="https://github.com/trustwallet/assets/compare/master...$username:$BRANCH_NAME?expand=1"

echo ""
print_success "Next steps:"
echo ""
echo "  1. Create a Pull Request on GitHub:"
echo ""
echo -e "     ${BLUE}$pr_url${NC}"
echo ""
echo "  2. Fill in the PR template with token information"
echo "  3. Wait for Trust Wallet team review (usually 3-5 business days)"
echo "  4. Respond to any feedback or requested changes"
echo ""

# Try to open PR creation page
read -p "Do you want to open the PR creation page in your browser? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    if command -v xdg-open &> /dev/null; then
        xdg-open "$pr_url" 2>/dev/null || print_info "Could not open browser automatically"
    elif command -v open &> /dev/null; then
        open "$pr_url" 2>/dev/null || print_info "Could not open browser automatically"
    else
        print_info "Please open the URL manually in your browser"
    fi
fi

echo ""
print_success "Trust Wallet submission process complete!"
print_info "Repository location: $TRUSTWALLET_DIR"

cd "$REPO_ROOT"
