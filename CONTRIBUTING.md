# Contributing to TheUSDOX Assets

Thank you for your interest in contributing to the TheUSDOX Assets repository!

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How to Contribute](#how-to-contribute)
- [Asset Guidelines](#asset-guidelines)
- [File Naming Conventions](#file-naming-conventions)
- [Submission Process](#submission-process)
- [Quality Standards](#quality-standards)

## 🤝 Code of Conduct

By participating in this project, you agree to maintain a respectful and collaborative environment.

## 🎯 How to Contribute

### Types of Contributions

1. **New Assets**: Add new logos, icons, or graphics
2. **Asset Updates**: Update existing assets with improvements
3. **Documentation**: Improve README files and guidelines
4. **Bug Fixes**: Fix issues with existing assets
5. **Optimization**: Improve file sizes and quality

## 🎨 Asset Guidelines

### General Requirements

All assets must:
- Be original or properly licensed
- Follow TheUSDOX brand guidelines
- Be optimized for web delivery
- Use proper file naming conventions
- Include appropriate documentation

### Image Specifications

#### SVG Files
- Minified and optimized
- Remove unnecessary metadata
- Use viewBox attribute
- Avoid embedded raster images
- Use `currentColor` for flexible coloring

#### PNG Files
- Transparent background (when appropriate)
- Optimized with TinyPNG or ImageOptim
- Appropriate resolution (72 DPI for web)
- Standard sizes: 256px, 512px, 1024px, 2048px

#### JPG Files
- Use only when transparency not needed
- Quality: 85-90% for web
- Optimized file size
- Progressive encoding

### Brand Assets

#### Logos
- Maintain aspect ratio
- Include clear space
- Provide multiple color variants
- Include both SVG and PNG formats
- Minimum size: 120px width

#### Colors
- Use brand color palette
- Ensure WCAG AA accessibility
- Provide HEX, RGB, and HSL values
- Test on light and dark backgrounds

#### Typography
- Include font files in web formats (WOFF2, WOFF)
- Provide licensing information
- Document font usage guidelines
- Include fallback font stacks

### Token Assets

#### Icon Specifications
- 1:1 aspect ratio (square)
- 10% internal padding
- Transparent background
- Works on light and dark themes
- Sizes: SVG, 256px, 512px PNG

#### Wallet-Specific Formats
Follow platform requirements:
- TrustWallet: 256×256 PNG
- MetaMask: SVG or 256×256 PNG
- Coinbase: 256×256 PNG
- Uniswap: SVG or 200×200 PNG

## 📝 File Naming Conventions

### Rules

1. **Lowercase only**: All filenames must be lowercase
2. **Hyphen-separated**: Use hyphens (kebab-case), not underscores or spaces
3. **Descriptive**: Use clear, descriptive names
4. **No special characters**: Only letters, numbers, and hyphens

### Examples

✅ **Correct:**
```
theusdox-logo-primary.svg
usdo-icon-256px.png
twitter-banner-dark.jpg
brand-colors.json
```

❌ **Incorrect:**
```
TheUSDOX_Logo_Primary.svg
USDO Icon 256px.png
Twitter-Banner-Dark.JPG
Brand Colors.json
```

### Naming Patterns

#### Logos
```
{brand}-logo-{variant}.{ext}
Example: theusdox-logo-primary.svg
```

#### Icons
```
{token}-icon-{size}.{ext}
Example: usdo-icon-256px.png
```

#### Social Media
```
{platform}-{type}-{variant}.{ext}
Example: twitter-banner-dark.png
```

#### React Components
```
{Name}{Type}.tsx
Example: UsdoIcon.tsx
```

## 🔄 Submission Process

### 1. Fork the Repository

```bash
git clone https://github.com/VKATHUSHAN/theusdox-assets.git
cd theusdox-assets
git checkout -b add-new-asset
```

### 2. Add Your Assets

- Place files in the appropriate directory
- Follow naming conventions
- Optimize files before committing

### 3. Update Documentation

- Update relevant README files
- Add usage examples if needed
- Document any special requirements

### 4. Optimize Assets

#### SVG Optimization
```bash
# Using SVGO
npx svgo your-file.svg

# Or use online tools
# - SVGOMG: https://jakearchibald.github.io/svgomg/
```

#### Image Optimization
```bash
# Using ImageOptim (Mac)
# Or online tools:
# - TinyPNG: https://tinypng.com/
# - Squoosh: https://squoosh.app/
```

### 5. Commit Changes

```bash
git add .
git commit -m "Add: USDO token icon in multiple sizes"
```

### 6. Push and Create PR

```bash
git push origin add-new-asset
```

Then create a Pull Request on GitHub with:
- Clear description of changes
- Screenshots/previews of visual assets
- Confirmation that guidelines were followed

## ✅ Quality Standards

### Pre-Submission Checklist

Before submitting, ensure:

- [ ] Files follow naming conventions (lowercase, hyphen-separated)
- [ ] Assets are optimized for web
- [ ] Multiple formats provided (SVG + PNG when appropriate)
- [ ] Documentation updated (README files)
- [ ] Files placed in correct directories
- [ ] No unnecessary files included (no .DS_Store, Thumbs.db, etc.)
- [ ] Asset quality is production-ready
- [ ] Branding is consistent
- [ ] Licensing is clear

### Image Quality Checklist

- [ ] Sharp, crisp edges (no blur or artifacts)
- [ ] Proper anti-aliasing
- [ ] No compression artifacts
- [ ] Correct dimensions
- [ ] Optimized file size
- [ ] Transparent background (when appropriate)
- [ ] Works on light and dark backgrounds

### SVG Quality Checklist

- [ ] Minified and optimized
- [ ] No embedded raster images
- [ ] Proper viewBox attribute
- [ ] No unnecessary groups or layers
- [ ] No metadata or comments
- [ ] Uses currentColor where appropriate
- [ ] Accessible (title, desc tags)

## 🔧 Development Tools

### Recommended Tools

- **Vector Editing**: Adobe Illustrator, Figma, Sketch
- **Raster Editing**: Adobe Photoshop, GIMP
- **SVG Optimization**: SVGO, SVGOMG
- **Image Optimization**: TinyPNG, ImageOptim, Squoosh
- **Version Control**: Git, GitHub Desktop

### Online Tools

- [SVGOMG](https://jakearchibald.github.io/svgomg/) - SVG optimization
- [TinyPNG](https://tinypng.com/) - PNG/JPG compression
- [Squoosh](https://squoosh.app/) - Image compression
- [Canva](https://www.canva.com/) - Design templates

## 📞 Getting Help

If you need help:

1. Check existing [issues](https://github.com/VKATHUSHAN/theusdox-assets/issues)
2. Review this contributing guide
3. Open a new issue with your question
4. Tag it appropriately (question, help wanted, etc.)

## 🎉 Recognition

Contributors will be recognized in:
- Repository contributors list
- Release notes
- Project documentation

Thank you for contributing to TheUSDOX Assets! 🚀
