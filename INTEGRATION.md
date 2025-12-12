# Integration Guide

Complete guide for integrating TheUSDOX Assets into your development workflow.

## 📋 Table of Contents

- [Quick Start](#quick-start)
- [VS Code Integration](#vs-code-integration)
- [theusdox-dapp Integration](#theusdox-dapp-integration)
- [React/Next.js Integration](#reactnextjs-integration)
- [Automated Workflows](#automated-workflows)

## 🚀 Quick Start

### Clone the Repository

```bash
# Clone into your project directory
git clone https://github.com/VKATHUSHAN/theusdox-assets.git

# Or add as a git submodule
git submodule add https://github.com/VKATHUSHAN/theusdox-assets.git assets
```

### Direct Usage

```bash
# Reference assets directly
<img src="./theusdox-assets/tokens/usdo/usdo-icon-256px.png" />
```

## 💻 VS Code Integration

### Recommended Extensions

Install these VS Code extensions for optimal workflow:

```json
{
  "recommendations": [
    "svgviewer.svg-viewer",
    "cssho.vscode-svgviewer",
    "jock.svg",
    "pnp.polacode",
    "esbenp.prettier-vscode"
  ]
}
```

Save as `.vscode/extensions.json` in your project.

### Workspace Settings

Create `.vscode/settings.json`:

```json
{
  "files.associations": {
    "*.svg": "xml"
  },
  "svg.preview.mode": "svg",
  "files.exclude": {
    "**/.git": true,
    "**/.DS_Store": true,
    "**/node_modules": true
  },
  "search.exclude": {
    "**/node_modules": true,
    "**/dist": true,
    "**/*.min.js": true
  }
}
```

### IntelliSense for Assets

Add to `jsconfig.json` or `tsconfig.json`:

```json
{
  "compilerOptions": {
    "baseUrl": ".",
    "paths": {
      "@assets/*": ["./theusdox-assets/*"],
      "@tokens/*": ["./theusdox-assets/tokens/*"],
      "@branding/*": ["./theusdox-assets/branding/*"]
    }
  }
}
```

### VS Code Tasks

Create `.vscode/tasks.json` for asset optimization:

```json
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "Optimize SVG",
      "type": "shell",
      "command": "npx svgo",
      "args": ["${file}"],
      "problemMatcher": [],
      "presentation": {
        "reveal": "always",
        "panel": "new"
      }
    },
    {
      "label": "Update Assets",
      "type": "shell",
      "command": "git",
      "args": ["submodule", "update", "--remote"],
      "problemMatcher": []
    }
  ]
}
```

### Snippets

Create `.vscode/snippets.code-snippets`:

```json
{
  "Import USDO Icon": {
    "prefix": "import-usdo",
    "body": [
      "import { UsdoIcon } from '@/assets/react-svgs/tokens/UsdoIcon';"
    ]
  },
  "Import TWUSD Icon": {
    "prefix": "import-twusd",
    "body": [
      "import { TwusdIcon } from '@/assets/react-svgs/tokens/TwusdIcon';"
    ]
  },
  "Asset Image Tag": {
    "prefix": "asset-img",
    "body": [
      "<img",
      "  src=\"/assets/${1:path}\"",
      "  alt=\"${2:description}\"",
      "  width={${3:width}}",
      "  height={${4:height}}",
      "/>"
    ]
  }
}
```

## 🔧 theusdox-dapp Integration

### As Git Submodule

```bash
# Add assets as submodule
cd theusdox-dapp
git submodule add https://github.com/VKATHUSHAN/theusdox-assets.git public/assets

# Initialize submodule
git submodule update --init --recursive
```

### Update Assets

```bash
# Update to latest assets
git submodule update --remote public/assets

# Commit the update
git add public/assets
git commit -m "Update assets to latest version"
```

### Next.js Configuration

In `next.config.js`:

```javascript
/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  webpack: (config) => {
    config.resolve.alias = {
      ...config.resolve.alias,
      '@assets': path.resolve(__dirname, 'public/assets'),
      '@tokens': path.resolve(__dirname, 'public/assets/tokens'),
      '@branding': path.resolve(__dirname, 'public/assets/branding'),
    };
    return config;
  },
};

module.exports = nextConfig;
```

### TypeScript Paths

In `tsconfig.json`:

```json
{
  "compilerOptions": {
    "baseUrl": ".",
    "paths": {
      "@assets/*": ["public/assets/*"],
      "@tokens/*": ["public/assets/tokens/*"],
      "@branding/*": ["public/assets/branding/*"],
      "@contracts/*": ["public/assets/contracts/*"]
    }
  }
}
```

### Component Usage

```tsx
// Import token icon
import { UsdoIcon } from '@assets/react-svgs/tokens/UsdoIcon';

// Import contract data
import usdoInfo from '@contracts/usdo/token-info.json';

export function TokenDisplay() {
  return (
    <div className="flex items-center gap-2">
      <UsdoIcon className="w-8 h-8" />
      <span>USDO</span>
      <span className="text-sm text-gray-500">
        {usdoInfo.addresses.mainnet}
      </span>
    </div>
  );
}
```

### Public Assets

```tsx
// Reference public assets
export function Logo() {
  return (
    <img 
      src="/assets/branding/logos/theusdox-logo-primary.svg"
      alt="TheUSDOX"
      className="h-8"
    />
  );
}
```

## ⚛️ React/Next.js Integration

### Installation Methods

#### Method 1: Git Submodule (Recommended)

```bash
git submodule add https://github.com/VKATHUSHAN/theusdox-assets.git src/assets
```

#### Method 2: Direct Clone

```bash
cd src
git clone https://github.com/VKATHUSAN/theusdox-assets.git assets
```

#### Method 3: NPM Package (Future)

```bash
npm install @theusdox/assets
# or
yarn add @theusdox/assets
```

### Import Patterns

```tsx
// Token icons
import { UsdoIcon, TwusdIcon } from '@assets/react-svgs/tokens';

// Contract data
import usdoInfo from '@contracts/usdo/token-info.json';
import usdoABI from '@contracts/usdo/abi.json';

// Colors
import colors from '@branding/colors/colors.json';
```

### Dynamic Imports

```tsx
import dynamic from 'next/dynamic';

const UsdoIcon = dynamic(() => 
  import('@assets/react-svgs/tokens/UsdoIcon').then(mod => mod.UsdoIcon)
);
```

### Web3 Integration

```tsx
import { ethers } from 'ethers';
import usdoInfo from '@contracts/usdo/token-info.json';
import usdoABI from '@contracts/usdo/abi.json';

// Create contract instance
const contract = new ethers.Contract(
  usdoInfo.addresses.mainnet,
  usdoABI,
  provider
);

// Get token balance
const balance = await contract.balanceOf(userAddress);
```

## 🤖 Automated Workflows

### GitHub Actions

Create `.github/workflows/update-assets.yml`:

```yaml
name: Update Assets

on:
  schedule:
    - cron: '0 0 * * 0'  # Weekly on Sunday
  workflow_dispatch:  # Manual trigger

jobs:
  update:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
        with:
          submodules: true
          
      - name: Update assets submodule
        run: |
          git submodule update --remote --merge
          
      - name: Create Pull Request
        uses: peter-evans/create-pull-request@v5
        with:
          commit-message: 'chore: update assets to latest version'
          title: 'Update TheUSDOX Assets'
          body: 'Automated update of asset submodule'
          branch: update-assets
```

### Pre-commit Hooks

Create `.husky/pre-commit`:

```bash
#!/bin/sh
. "$(dirname "$0")/_/husky.sh"

# Optimize SVG files
npx svgo -f public/assets/branding/logos
npx svgo -f public/assets/tokens

# Add optimized files
git add public/assets
```

### Asset Versioning

```json
// package.json
{
  "scripts": {
    "assets:update": "git submodule update --remote public/assets",
    "assets:status": "git submodule status",
    "assets:init": "git submodule update --init --recursive"
  }
}
```

## 📱 Mobile Integration (React Native)

### Setup

```bash
# Link assets
ln -s ../../theusdox-assets/tokens ./assets/tokens
```

### Usage

```tsx
import { Image } from 'react-native';

export function TokenIcon() {
  return (
    <Image
      source={require('./assets/tokens/usdo/usdo-icon-256px.png')}
      style={{ width: 32, height: 32 }}
    />
  );
}
```

## 🔄 Keeping Assets Updated

### Manual Update

```bash
cd theusdox-assets
git pull origin main
```

### With Submodules

```bash
git submodule update --remote --merge
git add theusdox-assets
git commit -m "Update assets"
```

### Automated Updates

Set up GitHub Actions or CI/CD pipeline to automatically check for and pull asset updates.

## 📞 Support

For integration help:
- Open an issue in the assets repository
- Check the main README for documentation
- Review example integrations in the repository

## 🔗 Related Documentation

- [Main README](./README.md)
- [Contributing Guide](./CONTRIBUTING.md)
- [Contract Metadata Guide](./contracts/README.md)
- [React Components Guide](./react-svgs/README.md)
