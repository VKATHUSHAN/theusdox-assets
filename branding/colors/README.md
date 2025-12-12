# Brand Colors

Official TheUSDOX color palette and usage guidelines.

## 🎨 Color Palette

### Primary Colors
```json
{
  "primary": {
    "main": "#[TO_BE_DEFINED]",
    "light": "#[TO_BE_DEFINED]",
    "dark": "#[TO_BE_DEFINED]"
  }
}
```

### Secondary Colors
```json
{
  "secondary": {
    "main": "#[TO_BE_DEFINED]",
    "light": "#[TO_BE_DEFINED]",
    "dark": "#[TO_BE_DEFINED]"
  }
}
```

### Neutral Colors
```json
{
  "neutral": {
    "white": "#FFFFFF",
    "gray-50": "#F9FAFB",
    "gray-100": "#F3F4F6",
    "gray-200": "#E5E7EB",
    "gray-300": "#D1D5DB",
    "gray-400": "#9CA3AF",
    "gray-500": "#6B7280",
    "gray-600": "#4B5563",
    "gray-700": "#374151",
    "gray-800": "#1F2937",
    "gray-900": "#111827",
    "black": "#000000"
  }
}
```

### Semantic Colors
```json
{
  "semantic": {
    "success": "#10B981",
    "warning": "#F59E0B",
    "error": "#EF4444",
    "info": "#3B82F6"
  }
}
```

## 📁 Available Files

- `colors.json` - Complete color definitions (HEX, RGB, HSL)
- `tailwind-colors.js` - Tailwind CSS configuration
- `css-variables.css` - CSS custom properties
- `scss-variables.scss` - SCSS variables
- `colors.sketch` - Sketch color palette (placeholder)
- `colors.ase` - Adobe Swatch Exchange format (placeholder)

## 🎯 Usage Guidelines

### Primary Color
- **Use for**: Main actions, primary buttons, links
- **Contrast**: Ensure WCAG AA compliance
- **Variants**: Use light for hover, dark for active states

### Secondary Color
- **Use for**: Accents, secondary actions, highlights
- **Contrast**: Ensure WCAG AA compliance
- **Balance**: Don't overuse; primary should dominate

### Neutral Colors
- **Use for**: Text, borders, backgrounds
- **Hierarchy**: Use darker grays for text, lighter for backgrounds
- **Accessibility**: Maintain 4.5:1 contrast for normal text

### Semantic Colors
- **Success**: Confirmations, successful operations
- **Warning**: Cautionary messages, important notices
- **Error**: Error messages, destructive actions
- **Info**: Informational messages, tips

## 🔧 Implementation

### CSS Variables
```css
/* Import color variables */
@import './branding/colors/css-variables.css';

/* Use in your styles */
.button-primary {
  background-color: var(--color-primary);
  color: var(--color-white);
}

.text-primary {
  color: var(--color-primary);
}
```

### Tailwind CSS
```javascript
// tailwind.config.js
const colors = require('./branding/colors/tailwind-colors.js');

module.exports = {
  theme: {
    extend: {
      colors: colors
    }
  }
}
```

### React/Next.js
```jsx
// Import color definitions
import colors from './branding/colors/colors.json';

// Use in inline styles
<div style={{ backgroundColor: colors.primary.main }}>
  Content
</div>

// Or with CSS-in-JS
const styles = {
  primary: {
    backgroundColor: colors.primary.main
  }
};
```

### SCSS
```scss
// Import SCSS variables
@import './branding/colors/scss-variables.scss';

// Use in your styles
.button {
  background-color: $color-primary;
  color: $color-white;
  
  &:hover {
    background-color: $color-primary-dark;
  }
}
```

## ♿ Accessibility

### Contrast Ratios (WCAG 2.1)
- **Normal Text (< 18px)**: 4.5:1 minimum
- **Large Text (≥ 18px)**: 3:1 minimum
- **Interactive Elements**: 3:1 minimum

### Color Blindness
- Don't rely on color alone to convey information
- Use icons, labels, and patterns as additional indicators
- Test with color blindness simulators

## 📝 File Naming

Color files follow this pattern:
```
colors.[format]
[framework]-colors.[ext]

Examples:
colors.json
colors.ase
tailwind-colors.js
css-variables.css
scss-variables.scss
```

## 🎨 Color Tools

### Online Tools
- [Coolors](https://coolors.co) - Color palette generator
- [Contrast Checker](https://webaim.org/resources/contrastchecker/) - WCAG compliance
- [Color Blind Simulator](https://www.color-blindness.com/coblis-color-blindness-simulator/) - Accessibility testing

### Design Software
- Adobe Color
- Sketch
- Figma

## 📄 Export Formats

Colors are available in multiple formats:
- **JSON**: Universal format for all frameworks
- **CSS**: CSS custom properties
- **SCSS/SASS**: Preprocessor variables
- **Tailwind**: Tailwind CSS configuration
- **ASE**: Adobe Swatch Exchange
- **Sketch**: Sketch palette file

## 🔄 Updates

When updating colors:
1. Update all format files consistently
2. Test accessibility compliance
3. Update documentation
4. Notify design and development teams
