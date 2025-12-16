# TheUSDOX Logos

Official TheUSDOX brand logos for all platforms and use cases.

## 📁 Available Assets

### Primary Logos

The following logo files are available in the repository:

1. **TWUSD Logo** - `theusdox-twusd-logo.png` (79 KB)
   - Raw URL: `https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/theusdox-twusd-logo.png`
   
2. **USDO Logo** - `theusdox-usdo-logo.png` (192 KB)
   - Raw URL: `https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/theusdox-usdo-logo.png`
   
3. **USDOXCare Logo** - `theusdox-care-logo.png` (216 KB)
   - Raw URL: `https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/theusdox-care-logo.png`

### Generated Variants

Use the `scripts/generate-logo-variants.js` script to generate different sizes (256px, 512px, 1024px, 2048px) for all logos. The variants will be stored in the `variants/` subdirectory.

### File Formats
- **PNG**: Transparent background (primary logos and variants)

## 🎨 Logo Specifications

### TWUSD Logo
- **Usage**: For TWUSD token branding and marketing
- **Minimum Width**: 120px digital, 1 inch print
- **Clear Space**: Maintain adequate spacing around logo

### USDO Logo
- **Usage**: For USDO token branding and marketing
- **Minimum Width**: 120px digital, 1 inch print
- **Clear Space**: Maintain adequate spacing around logo

### USDOXCare Logo
- **Usage**: For USDOXCare platform and services
- **Minimum Width**: 120px digital, 1 inch print
- **Clear Space**: Maintain adequate spacing around logo

## 📏 Usage Guidelines

### ✅ Do's
- Use official logo files only
- Maintain proper clear space
- Scale proportionally
- Use appropriate variant for background
- Ensure legibility at all sizes

### ❌ Don'ts
- Don't distort or skew the logo
- Don't change colors
- Don't add effects or shadows
- Don't recreate or redraw the logo
- Don't place on busy backgrounds

## 📝 File Naming

Logo files follow this pattern:
```
theusdox-[product]-logo.png         (primary logos)
theusdox-[product]-logo-[size]px.png (variants)

Examples:
theusdox-twusd-logo.png
theusdox-usdo-logo.png
theusdox-care-logo.png
theusdox-twusd-logo-256px.png
theusdox-usdo-logo-512px.png
```

## 🔧 Implementation Examples

### HTML
```html
<!-- TWUSD Logo -->
<img 
  src="https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/theusdox-twusd-logo.png" 
  alt="TheUSDOX TWUSD" 
  width="200"
/>

<!-- USDO Logo -->
<img 
  src="https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/theusdox-usdo-logo.png" 
  alt="TheUSDOX USDO" 
  width="200"
/>

<!-- USDOXCare Logo -->
<img 
  src="https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/theusdox-care-logo.png" 
  alt="TheUSDOX Care" 
  width="200"
/>
```

### Markdown
```markdown
![TWUSD Logo](https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/theusdox-twusd-logo.png)

![USDO Logo](https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/theusdox-usdo-logo.png)

![USDOXCare Logo](https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/theusdox-care-logo.png)
```

### React
```jsx
// Import from CDN or local copy
const TWUSD_LOGO = 'https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/theusdox-twusd-logo.png';
const USDO_LOGO = 'https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/theusdox-usdo-logo.png';
const CARE_LOGO = 'https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/theusdox-care-logo.png';

export default function Logo({ product = 'twusd' }) {
  const logos = {
    twusd: TWUSD_LOGO,
    usdo: USDO_LOGO,
    care: CARE_LOGO
  };
  
  return (
    <img 
      src={logos[product]} 
      alt={`TheUSDOX ${product.toUpperCase()}`} 
      className="h-8 w-auto"
    />
  );
}
```

### CSS
```css
.logo-twusd {
  background-image: url('https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/theusdox-twusd-logo.png');
  background-size: contain;
  background-repeat: no-repeat;
  width: 200px;
  height: 50px;
}

.logo-usdo {
  background-image: url('https://raw.githubusercontent.com/VKATHUSHAN/theusdox-assets/main/branding/logos/theusdox-usdo-logo.png');
  background-size: contain;
  background-repeat: no-repeat;
  width: 200px;
  height: 50px;
}
```

## 🎯 Use Cases

### Website Header
- Use: `theusdox-[product]-logo.png` or generated variants
- Size: Auto-scale based on header height
- Recommended: Use 512px variant for high-resolution displays

### Favicon
- Use: Generated `theusdox-[product]-logo-256px.png`
- Convert to ICO format
- Sizes: 16×16, 32×32, 48×48

### Social Media Profile
- Use: Generated `theusdox-[product]-logo-512px.png`
- Size: 512×512 minimum
- Background: Transparent or brand color

### Email Signature
- Use: Generated `theusdox-[product]-logo-256px.png`
- Size: 256px wide maximum

## 📱 Platform-Specific Guidelines

### iOS App Icon
- Use: Generated `theusdox-[product]-logo-1024px.png`
- Size: 1024×1024
- Format: PNG

### Android App Icon
- Use: Generated `theusdox-[product]-logo-512px.png`
- Size: 512×512
- Format: PNG

### Web App Manifest
- Use: Generated variants at 192px and 512px
- Sizes: 192×192, 512×512
- Format: PNG

## 🎨 Color Specifications

See `/branding/colors/README.md` for official color values.

## 📄 License

These logos are trademarked assets of TheUSDOX. Use only as specified in these guidelines.
