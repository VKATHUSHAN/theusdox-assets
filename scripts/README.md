# Scripts

This directory contains utility scripts for managing TheUSDOX assets.

## Available Scripts

### generate-logo-variants.js

Generates multiple size variants of logo files using the Sharp image processing library.

**Purpose:**
- Creates resized versions of logos for different use cases
- Maintains image quality and aspect ratio
- Generates standard sizes: 256px, 512px, 1024px, 2048px

**Installation:**

First, install the required dependency:

```bash
npm install sharp
```

**Usage:**

Run the script directly:

```bash
node scripts/generate-logo-variants.js
```

Or use the npm script:

```bash
npm run generate:variants
```

**What it does:**

1. Reads source logo files from `branding/logos/`:
   - `theusdox-twusd-logo.png`
   - `theusdox-usdo-logo.png`
   - `theusdox-care-logo.png`

2. Creates the `branding/logos/variants/` directory if it doesn't exist

3. Generates 4 size variants for each logo:
   - `{logo-name}-256px.png` - For favicons, email signatures
   - `{logo-name}-512px.png` - For social media, app icons
   - `{logo-name}-1024px.png` - For high-resolution displays, iOS app icons
   - `{logo-name}-2048px.png` - For print and large displays

4. Outputs a summary of generated files

**Output Example:**

```
branding/logos/variants/
├── theusdox-twusd-logo-256px.png
├── theusdox-twusd-logo-512px.png
├── theusdox-twusd-logo-1024px.png
├── theusdox-twusd-logo-2048px.png
├── theusdox-usdo-logo-256px.png
├── theusdox-usdo-logo-512px.png
├── theusdox-usdo-logo-1024px.png
├── theusdox-usdo-logo-2048px.png
├── theusdox-care-logo-256px.png
├── theusdox-care-logo-512px.png
├── theusdox-care-logo-1024px.png
└── theusdox-care-logo-2048px.png
```

**Error Handling:**

The script includes comprehensive error handling:
- Checks if source files exist
- Validates image metadata
- Reports any failures during generation
- Exits with non-zero code if any variant fails to generate

**Requirements:**

- Node.js (v12 or higher)
- Sharp library (`npm install sharp`)

**Troubleshooting:**

If you encounter issues installing Sharp:

```bash
# Clear npm cache
npm cache clean --force

# Install with verbose logging
npm install sharp --verbose

# For Linux/macOS, you may need build tools:
# Ubuntu/Debian: sudo apt-get install build-essential
# macOS: xcode-select --install
```

## Adding New Scripts

When adding new scripts to this directory:

1. Add clear documentation in this README
2. Include usage examples
3. Add error handling and helpful output messages
4. Update package.json with an npm script shortcut if appropriate
