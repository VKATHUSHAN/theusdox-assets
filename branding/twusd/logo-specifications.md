# TWUSD Logo Specifications

Official logo specifications for the TWUSD (TheUSDOX Wrapped Dollar EVM) token.

## Official Logo

![TWUSD Logo](../../tokens/ethereum/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D/logo.png)

## Sizes Available

This repository provides three optimized sizes for different use cases:

### 1024x1024px - High Resolution
- **File**: `logo-1024x1024.png`
- **Use Case**: Marketing materials, print, high-quality displays
- **File Size**: ~110KB
- **Location**: `/branding/twusd/logo-1024x1024.png`

### 512x512px - Standard
- **File**: `logo-512x512.png`
- **Use Case**: Most wallet integrations, web applications, Etherscan
- **File Size**: ~21KB
- **Location**: `/branding/twusd/logo-512x512.png`
- **Also Available**: `/tokens/ethereum/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D/logo.png`

### 256x256px - Small
- **File**: `logo-256x256.png`
- **Use Case**: Trust Wallet, mobile apps, thumbnails
- **File Size**: ~17KB
- **Location**: `/branding/twusd/logo-256x256.png`

## Technical Specifications

### Format
- **File Type**: PNG-24 with alpha channel
- **Color Mode**: RGB
- **Color Space**: sRGB
- **Bit Depth**: 8-bit per channel
- **Background**: Transparent (alpha channel)
- **Compression**: Optimized with pngquant

### Dimensions
- **Aspect Ratio**: 1:1 (square)
- **Available Sizes**: 256px, 512px, 1024px
- **Minimum Recommended**: 256x256px
- **Standard**: 512x512px
- **High Resolution**: 1024x1024px

### File Sizes
All files are optimized to meet platform requirements:
- **1024x1024**: < 200KB (actual: ~110KB) ✅
- **512x512**: < 100KB (actual: ~21KB) ✅
- **256x256**: < 50KB (actual: ~17KB) ✅

## Platform Compatibility

| Platform | Recommended Size | File Size Limit | Status |
|----------|-----------------|-----------------|--------|
| Etherscan | 512x512px | 200KB | ✅ Ready |
| Trust Wallet | 256x256px | 100KB | ✅ Ready |
| MetaMask | 512x512px | - | ✅ Ready |
| CoinGecko | 200x200px | 500KB | ✅ Compatible |
| CoinMarketCap | 200x200px | 500KB | ✅ Compatible |
| Uniswap | 256x256px | - | ✅ Ready |
| 1inch | 256x256px | - | ✅ Ready |
| DeFi Platforms | 256-512px | - | ✅ Ready |

*Note: 256x256px and 512x512px can be used for 200x200px requirements*

## Design Guidelines

### Logo Characteristics
- **Shape**: Circular token logo with TWUSD branding
- **Style**: Modern, professional, clean
- **Background**: Transparent (required)
- **Padding**: Logo has appropriate internal padding for clear space
- **Colors**: TWUSD brand colors (see color palette below)

### Usage Guidelines

#### ✅ DO:
- Maintain aspect ratio (always 1:1 square)
- Use transparent background
- Use appropriate size for platform
- Ensure sufficient contrast with background
- Test on both light and dark backgrounds
- Use optimized versions from this repository

#### ❌ DON'T:
- Stretch or distort the logo
- Add backgrounds or borders
- Modify the colors
- Add effects (shadows, glows, etc.)
- Compress further (already optimized)
- Crop or trim the logo
- Use low-quality or pixelated versions

### Clear Space
- Minimum clear space: 10% of logo width on all sides
- Keep logo free from overlapping elements
- Ensure logo is clearly visible and recognizable

### Minimum Sizes
- **Web**: Minimum 32x32px (from 256px version)
- **Mobile**: Minimum 24x24px (from 256px version)
- **Print**: Use 1024px version, scale as needed

## Color Specifications

The TWUSD logo uses the following color palette:

### Primary Colors
*Note: Extract actual colors from the logo file*

- **Primary Blue**: [Color to be extracted]
  - Hex: `#XXXXXX`
  - RGB: `rgb(XX, XX, XX)`
  - HSL: `hsl(XXX, XX%, XX%)`

- **Accent Color**: [If applicable]
  - Hex: `#XXXXXX`
  - RGB: `rgb(XX, XX, XX)`
  - HSL: `hsl(XXX, XX%, XX%)`

### Background Colors
- **Transparent**: Required for all official versions
- **For Reference Only**: 
  - Light background: `#FFFFFF` (white)
  - Dark background: `#1A1A1A` (near black)

## File Naming Conventions

All logo files follow this naming pattern:
```
logo-{size}x{size}.png
```

Examples:
- `logo-256x256.png` - 256x256 pixels
- `logo-512x512.png` - 512x512 pixels
- `logo-1024x1024.png` - 1024x1024 pixels

For platform-specific use:
- Standard naming: `logo.png` (512x512px default)

## Usage Examples

### HTML
```html
<!-- Standard size -->
<img 
  src="/branding/twusd/logo-512x512.png" 
  alt="TWUSD Token"
  width="48"
  height="48"
/>

<!-- High resolution -->
<img 
  src="/branding/twusd/logo-1024x1024.png" 
  alt="TWUSD Token"
  width="128"
  height="128"
/>
```

### React/Next.js
```jsx
import twusdLogo from '@/branding/twusd/logo-512x512.png';

function TokenIcon() {
  return (
    <img 
      src={twusdLogo} 
      alt="TWUSD" 
      className="w-12 h-12"
    />
  );
}
```

### CSS
```css
.twusd-icon {
  width: 32px;
  height: 32px;
  background-image: url('/branding/twusd/logo-512x512.png');
  background-size: contain;
  background-repeat: no-repeat;
  background-position: center;
}

/* For high-DPI displays */
@media (-webkit-min-device-pixel-ratio: 2), (min-resolution: 192dpi) {
  .twusd-icon {
    background-image: url('/branding/twusd/logo-1024x1024.png');
  }
}
```

### Markdown
```markdown
![TWUSD](./logo-512x512.png)
```

## Accessibility

### Alt Text Guidelines
Always provide descriptive alt text:

```html
<!-- Good -->
<img src="logo.png" alt="TWUSD token logo" />

<!-- Better -->
<img src="logo.png" alt="TWUSD - TheUSDOX Wrapped Dollar EVM token" />

<!-- Best (for context) -->
<img src="logo.png" alt="TWUSD token - click to view details" />
```

### Contrast Requirements
- Logo should be visible on both light and dark backgrounds
- Test with background colors: white (#FFFFFF) and dark (#1A1A1A)
- Ensure WCAG AA compliance for any text near logo

## Quality Assurance

Before using the logo, verify:
- [ ] Correct size for intended platform
- [ ] File is PNG format
- [ ] Background is transparent
- [ ] File size is optimized
- [ ] Logo appears clear and sharp
- [ ] Aspect ratio is maintained (1:1)
- [ ] Colors are accurate
- [ ] No compression artifacts

## Optimization Details

All logos have been optimized using:
- **ImageMagick**: For resizing and format conversion
- **pngquant**: For lossy PNG compression with quality preservation
- **Strip metadata**: All EXIF data removed for smaller file size

Optimization settings:
- 256x256: Quality 80-95, ~17KB
- 512x512: Quality 80-95, ~21KB  
- 1024x1024: Quality 70-85, ~110KB

## File Locations

### Quick Reference
```
Repository Structure:
├── branding/twusd/
│   ├── logo-256x256.png       (17KB)
│   ├── logo-512x512.png       (21KB)
│   └── logo-1024x1024.png     (110KB)
│
└── tokens/ethereum/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D/
    └── logo.png               (512x512, 21KB)
```

## Updates and Versioning

- **Current Version**: 1.0
- **Last Updated**: [Date will be set after creation]
- **Changes**: Initial logo creation and optimization

### Future Updates
When the logo is updated:
1. Increment version number
2. Document changes in this file
3. Maintain backward compatibility where possible
4. Update all size variants
5. Re-optimize for file size
6. Test on all platforms

## License and Usage Rights

These logos are official assets for the TWUSD token. 

### Permitted Use:
- Wallet integrations
- Exchange listings  
- DeFi platform integrations
- News articles about TWUSD
- Educational materials
- Community content

### Restricted Use:
- Do not imply endorsement without permission
- Do not use in misleading contexts
- Do not modify or create derivatives
- Do not use for competing projects

## Support

For questions about logo usage:
- Review this specification document
- Check submission guides in `/wallet-submissions/`
- Open an issue in the repository
- Contact the TWUSD team

## Related Documentation

- [Token README](../../tokens/ethereum/0x7BeB51807E3c8BdB10A2868bD51c2D9E1764925D/README.md)
- [Etherscan Submission Guide](../../wallet-submissions/etherscan/SUBMISSION_GUIDE.md)
- [Trust Wallet Submission Guide](../../wallet-submissions/trust-wallet/SUBMISSION_GUIDE.md)
- [Branding Guidelines](../README.md)

---

**For the most up-to-date logo files, always reference this repository.**
