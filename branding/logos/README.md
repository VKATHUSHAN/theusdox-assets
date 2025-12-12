# TheUSDOX Logos

Official TheUSDOX brand logos for all platforms and use cases.

## 📁 Available Assets

### Logo Variants
- **Primary Logo**: Full color on light background
- **Primary Logo Dark**: Full color on dark background
- **Wordmark**: Text-only logo
- **Symbol**: Icon-only version
- **Monochrome**: Single color variations

### File Formats
- **SVG**: Vector format (recommended for web)
- **PNG**: Transparent background (various sizes)

### Sizes (PNG)
- 256px × 256px
- 512px × 512px
- 1024px × 1024px
- 2048px × 2048px

## 🎨 Logo Specifications

### Primary Logo
- **Usage**: Default logo for all applications
- **Background**: White or light backgrounds
- **Minimum Width**: 120px digital, 1 inch print
- **Clear Space**: Equal to height of 'X' in logo

### Primary Logo Dark
- **Usage**: On dark or colored backgrounds
- **Background**: Dark backgrounds (#1a1a1a or darker)
- **Minimum Width**: 120px digital, 1 inch print

### Symbol/Icon
- **Usage**: App icons, favicons, small spaces
- **Aspect Ratio**: 1:1 (square)
- **Minimum Size**: 32px × 32px

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
theusdox-logo-[variant]-[size].[format]

Examples:
theusdox-logo-primary.svg
theusdox-logo-dark.svg
theusdox-logo-symbol-256px.png
theusdox-wordmark.svg
```

## 🔧 Implementation Examples

### HTML
```html
<img 
  src="/branding/logos/theusdox-logo-primary.svg" 
  alt="TheUSDOX" 
  width="200"
/>
```

### React
```jsx
import logo from './branding/logos/theusdox-logo-primary.svg'

export default function Logo() {
  return (
    <img 
      src={logo} 
      alt="TheUSDOX" 
      className="h-8 w-auto"
    />
  )
}
```

### CSS
```css
.logo {
  background-image: url('./branding/logos/theusdox-logo-primary.svg');
  background-size: contain;
  background-repeat: no-repeat;
  width: 200px;
  height: 50px;
}
```

## 🎯 Use Cases

### Website Header
- Use: `theusdox-logo-primary.svg`
- Size: Auto-scale based on header height
- Background: Light

### Website Header (Dark Mode)
- Use: `theusdox-logo-dark.svg`
- Size: Auto-scale based on header height
- Background: Dark

### Favicon
- Use: `theusdox-logo-symbol-512px.png`
- Convert to ICO format
- Sizes: 16×16, 32×32, 48×48

### Social Media Profile
- Use: `theusdox-logo-symbol-512px.png`
- Size: 512×512 minimum
- Background: Transparent or brand color

### Email Signature
- Use: `theusdox-logo-primary-256px.png`
- Size: 256px wide maximum
- Background: White

## 📱 Platform-Specific Guidelines

### iOS App Icon
- Use: `theusdox-logo-symbol-1024px.png`
- Size: 1024×1024
- Format: PNG
- No transparency (fill with brand color if needed)

### Android App Icon
- Use: `theusdox-logo-symbol-512px.png`
- Size: 512×512
- Format: PNG
- Can use transparency

### Web App Manifest
- Use: `theusdox-logo-symbol-192px.png` and `theusdox-logo-symbol-512px.png`
- Sizes: 192×192, 512×512
- Format: PNG

## 🎨 Color Specifications

See `/branding/colors/README.md` for official color values.

## 📄 License

These logos are trademarked assets of TheUSDOX. Use only as specified in these guidelines.
