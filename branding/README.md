# Branding

Master brand assets for the TheUSDOX ecosystem.

## 📁 Directory Structure

```
branding/
├── logos/          # TheUSDOX brand logos
├── icons/          # App icons and favicons
├── typography/     # Font files and guidelines
└── colors/         # Brand color palettes
```

## 🎨 Brand Assets

### Logos
Primary TheUSDOX brand logos in multiple formats:
- **SVG**: Vector format (recommended)
- **PNG**: Raster format (transparent background)
- **Sizes**: Various sizes for different use cases

See `logos/README.md` for detailed usage guidelines.

### Icons
Application icons and favicons:
- **App Icons**: iOS, Android launcher icons
- **Favicons**: Website favicons (16x16, 32x32, 192x192, 512x512)
- **Formats**: SVG, PNG, ICO

See `icons/README.md` for implementation details.

### Typography
Brand typography assets:
- **Font Files**: WOFF2, WOFF, TTF formats
- **Web Fonts**: CSS integration files
- **Guidelines**: Type scale, hierarchy, usage

See `typography/README.md` for font implementation.

### Colors
Brand color system:
- **Primary Colors**: Main brand colors
- **Secondary Colors**: Accent and support colors
- **Neutral Colors**: Grays and backgrounds
- **Semantic Colors**: Success, warning, error, info
- **Formats**: HEX, RGB, HSL values

See `colors/README.md` for color specifications.

## 🎯 Usage Guidelines

### Logo Usage
1. Always use official logo files
2. Maintain minimum clear space
3. Do not modify or distort
4. Use appropriate color variant for background

### Color Usage
1. Follow accessibility guidelines (WCAG 2.1 AA)
2. Use primary colors for main actions
3. Use secondary colors for accents
4. Maintain proper contrast ratios

### Typography Usage
1. Use system font stack as fallback
2. Implement web fonts with `font-display: swap`
3. Follow type hierarchy for consistency
4. Optimize font loading performance

## 📝 File Naming Convention

All files use kebab-case:
```
✅ theusdox-logo-primary.svg
✅ app-icon-512px.png
✅ brand-colors.json

❌ TheUSDOX_Logo_Primary.svg
❌ AppIcon512px.png
❌ Brand Colors.json
```

## 🔧 Integration Examples

### React/Next.js
```jsx
import logo from './branding/logos/theusdox-logo.svg'

export default function Header() {
  return <img src={logo} alt="TheUSDOX" className="h-8" />
}
```

### CSS
```css
@font-face {
  font-family: 'TheUSDOX';
  src: url('./branding/typography/theusdox-font.woff2') format('woff2');
  font-display: swap;
}

:root {
  --color-primary: #[PRIMARY_COLOR];
  --color-secondary: #[SECONDARY_COLOR];
}
```

## 📦 Asset Optimization

All assets are optimized for web:
- **SVGs**: Minified, metadata removed
- **PNGs**: Compressed with TinyPNG/ImageOptim
- **Fonts**: Subsetted for performance
- **Colors**: Defined in multiple formats

## 🤝 Contributing

When adding new brand assets:
1. Follow naming conventions
2. Optimize for web delivery
3. Provide multiple formats
4. Update corresponding README
5. Maintain brand consistency

## 📄 Brand Guidelines

For comprehensive brand guidelines, see individual README files in each subdirectory.
