#!/bin/bash

# PR Completion Script
# Completes and merges the current PR using GitHub CLI

set -e

# Configuration
PR_NUMBER=3
BRANCH="copilot/setup-token-logo-repository"
REPO="VKATHUSHAN/theusdox-assets"

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

print_header "${ROCKET} PR Completion Tool"

# Check if gh is installed
if ! command -v gh &> /dev/null; then
    print_error "GitHub CLI (gh) is not installed"
    echo ""
    print_info "Please install GitHub CLI:"
    echo "  macOS: brew install gh"
    echo "  Linux: See https://github.com/cli/cli/blob/trunk/docs/install_linux.md"
    echo "  Windows: winget install GitHub.cli"
    echo ""
    print_info "After installation, authenticate with: gh auth login"
    exit 1
fi

print_success "GitHub CLI is installed"

# Check authentication
print_info "Checking GitHub authentication..."
if ! gh auth status &> /dev/null; then
    print_error "Not authenticated with GitHub CLI"
    echo ""
    print_info "Please run: gh auth login"
    exit 1
fi

print_success "Authenticated with GitHub"

# Get PR status
print_info "Fetching PR #$PR_NUMBER status..."
echo ""

pr_state=$(gh pr view $PR_NUMBER --repo $REPO --json state --jq '.state' 2>/dev/null || echo "NOT_FOUND")

if [ "$pr_state" = "NOT_FOUND" ]; then
    print_error "PR #$PR_NUMBER not found in repository $REPO"
    echo ""
    print_info "Available PRs:"
    gh pr list --repo $REPO
    exit 1
fi

print_success "Found PR #$PR_NUMBER"
echo ""

# Display PR information
gh pr view $PR_NUMBER --repo $REPO

echo ""

# Check if PR is ready
pr_draft=$(gh pr view $PR_NUMBER --repo $REPO --json isDraft --jq '.isDraft')
pr_mergeable=$(gh pr view $PR_NUMBER --repo $REPO --json mergeable --jq '.mergeable')

if [ "$pr_draft" = "true" ]; then
    print_warning "PR is in draft state"
    echo ""
    read -p "Do you want to mark it as ready for review? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        print_info "Marking PR as ready for review..."
        gh pr ready $PR_NUMBER --repo $REPO
        print_success "PR marked as ready"
    else
        print_info "Keeping PR in draft state"
    fi
fi

# Show review status
echo ""
print_info "Review status:"
gh pr view $PR_NUMBER --repo $REPO --json reviewDecision,reviews --jq '.reviews[] | "- \(.author.login): \(.state)"' || echo "No reviews yet"

echo ""

# Check CI status
print_info "Checking CI status..."
pr_checks=$(gh pr view $PR_NUMBER --repo $REPO --json statusCheckRollup --jq '.statusCheckRollup[] | "\(.context): \(.state)"')

if [ ! -z "$pr_checks" ]; then
    echo "$pr_checks"
else
    print_info "No CI checks found"
fi

echo ""

# Ask to merge
if [ "$pr_state" = "OPEN" ]; then
    print_info "PR is open and ready"
    echo ""
    read -p "Do you want to merge this PR? (y/n) " -n 1 -r
    echo
    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # Check mergeable status
        if [ "$pr_mergeable" = "CONFLICTING" ]; then
            print_error "PR has merge conflicts"
            print_info "Please resolve conflicts before merging"
            exit 1
        fi
        
        # Ask for merge method
        echo ""
        echo "Select merge method:"
        echo "  1. Squash and merge (recommended)"
        echo "  2. Create a merge commit"
        echo "  3. Rebase and merge"
        echo ""
        read -p "Enter choice [1-3]: " merge_choice
        
        merge_method="squash"
        case $merge_choice in
            1)
                merge_method="squash"
                ;;
            2)
                merge_method="merge"
                ;;
            3)
                merge_method="rebase"
                ;;
            *)
                print_warning "Invalid choice, using squash"
                merge_method="squash"
                ;;
        esac
        
        print_info "Merging PR with $merge_method method..."
        
        # Merge PR
        if gh pr merge $PR_NUMBER --repo $REPO --$merge_method --delete-branch; then
            print_success "PR #$PR_NUMBER merged successfully!"
            print_success "Branch '$BRANCH' deleted"
            echo ""
            print_info "Next steps:"
            echo "  1. Local branch can be deleted with: git branch -D $BRANCH"
            echo "  2. Start wallet submissions with: make submit"
            echo ""
        else
            print_error "Failed to merge PR"
            exit 1
        fi
    else
        print_info "PR merge cancelled"
        echo ""
        print_info "You can merge later with: gh pr merge $PR_NUMBER --repo $REPO --squash --delete-branch"
    fi
elif [ "$pr_state" = "MERGED" ]; then
    print_success "PR is already merged!"
    echo ""
    print_info "You can now start wallet submissions with: make submit"
elif [ "$pr_state" = "CLOSED" ]; then
    print_warning "PR is closed (not merged)"
else
    print_info "PR state: $pr_state"
fi

echo ""
print_success "PR completion script finished"
