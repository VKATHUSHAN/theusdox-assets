# Favicon Usage Guide

This directory contains automatically generated favicons for TheUSDOX brands. The favicons are optimized for all major platforms and devices.

## 📁 Directory Structure

```
favicons/
├── theusdox/          # TheUSDOX brand favicons
├── usdoxcare/         # USDOXCARE Organization brand favicons
└── USAGE.md           # This file
```

## 🎨 Available Favicon Sizes

Each brand directory contains the following files:

| File | Size | Usage |
|------|------|-------|
| `favicon.ico` | Multi-size | Legacy browsers (IE, older browsers) |
| `favicon-16x16.png` | 16×16 | Standard favicon |
| `favicon-32x32.png` | 32×32 | Standard favicon (high-DPI) |
| `favicon-48x48.png` | 48×48 | Browser tab icon |
| `favicon-64x64.png` | 64×64 | Windows site icon |
| `favicon-128x128.png` | 128×128 | Chrome Web Store |
| `apple-touch-icon-180x180.png` | 180×180 | Apple Touch Icon (iOS) |
| `android-chrome-192x192.png` | 192×192 | Android Chrome (standard) |
| `android-chrome-512x512.png` | 512×512 | Android Chrome (high-res) |

## 🔗 HTML Integration

### TheUSDOX Brand

Add these tags to your HTML `<head>` section:

```html
<!-- Favicon -->
<link rel="icon" type="image/x-icon" href="/favicons/theusdox/favicon.ico">
<link rel="icon" type="image/png" sizes="16x16" href="/favicons/theusdox/favicon-16x16.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicons/theusdox/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="48x48" href="/favicons/theusdox/favicon-48x48.png">

<!-- Apple Touch Icon -->
<link rel="apple-touch-icon" sizes="180x180" href="/favicons/theusdox/apple-touch-icon-180x180.png">

<!-- Android Chrome -->
<link rel="icon" type="image/png" sizes="192x192" href="/favicons/theusdox/android-chrome-192x192.png">
<link rel="icon" type="image/png" sizes="512x512" href="/favicons/theusdox/android-chrome-512x512.png">

<!-- Web App Manifest -->
<link rel="manifest" href="/favicons/theusdox/site.webmanifest">

<!-- Theme Color for Browser UI -->
<meta name="theme-color" content="#1E3A8A">
```

### USDOXCARE Organization Brand

Add these tags to your HTML `<head>` section:

```html
<!-- Favicon -->
<link rel="icon" type="image/x-icon" href="/favicons/usdoxcare/favicon.ico">
<link rel="icon" type="image/png" sizes="16x16" href="/favicons/usdoxcare/favicon-16x16.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicons/usdoxcare/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="48x48" href="/favicons/usdoxcare/favicon-48x48.png">

<!-- Apple Touch Icon -->
<link rel="apple-touch-icon" sizes="180x180" href="/favicons/usdoxcare/apple-touch-icon-180x180.png">

<!-- Android Chrome -->
<link rel="icon" type="image/png" sizes="192x192" href="/favicons/usdoxcare/android-chrome-192x192.png">
<link rel="icon" type="image/png" sizes="512x512" href="/favicons/usdoxcare/android-chrome-512x512.png">

<!-- Web App Manifest -->
<link rel="manifest" href="/favicons/usdoxcare/site.webmanifest">

<!-- Theme Color for Browser UI -->
<meta name="theme-color" content="#059669">
```

## 📱 Web App Manifest

Each brand includes a `site.webmanifest` file for Progressive Web App (PWA) support:

### TheUSDOX Example

```json
{
  "name": "TheUSDOX",
  "short_name": "USDOX",
  "icons": [
    {
      "src": "/favicons/theusdox/android-chrome-192x192.png",
      "sizes": "192x192",
      "type": "image/png"
    },
    {
      "src": "/favicons/theusdox/android-chrome-512x512.png",
      "sizes": "512x512",
      "type": "image/png"
    }
  ],
  "theme_color": "#1E3A8A",
  "background_color": "#ffffff",
  "display": "standalone"
}
```

### USDOXCARE Example

```json
{
  "name": "USDOXCARE Organization",
  "short_name": "USDOXCARE",
  "icons": [
    {
      "src": "/favicons/usdoxcare/android-chrome-192x192.png",
      "sizes": "192x192",
      "type": "image/png"
    },
    {
      "src": "/favicons/usdoxcare/android-chrome-512x512.png",
      "sizes": "512x512",
      "type": "image/png"
    }
  ],
  "theme_color": "#059669",
  "background_color": "#ffffff",
  "display": "standalone"
}
```

## 🪟 Windows Tiles (browserconfig.xml)

For Windows 8/10 tile support, create a `browserconfig.xml` file in your website root:

### TheUSDOX Example

```xml
<?xml version="1.0" encoding="utf-8"?>
<browserconfig>
  <msapplication>
    <tile>
      <square150x150logo src="/favicons/theusdox/favicon-128x128.png"/>
      <TileColor>#1E3A8A</TileColor>
    </tile>
  </msapplication>
</browserconfig>
```

### USDOXCARE Example

```xml
<?xml version="1.0" encoding="utf-8"?>
<browserconfig>
  <msapplication>
    <tile>
      <square150x150logo src="/favicons/usdoxcare/favicon-128x128.png"/>
      <TileColor>#059669</TileColor>
    </tile>
  </msapplication>
</browserconfig>
```

## 🌐 CDN Usage

### GitHub Pages

If your repository has GitHub Pages enabled, you can use:

```html
<link rel="icon" href="https://vkathushan.github.io/theusdox-assets/favicons/theusdox/favicon-32x32.png">
```

### jsDelivr CDN

For fast global delivery via jsDelivr CDN:

```html
<link rel="icon" href="https://cdn.jsdelivr.net/gh/VKATHUSHAN/theusdox-assets@main/favicons/theusdox/favicon-32x32.png">
```

## 🔄 Browser Compatibility

| Browser | Supported Formats |
|---------|------------------|
| Chrome | PNG, ICO, SVG |
| Firefox | PNG, ICO, SVG |
| Safari | PNG, ICO (Apple Touch Icon recommended) |
| Edge | PNG, ICO |
| Opera | PNG, ICO, SVG |
| IE 11 | ICO |

## ✨ Best Practices

1. **Place in root**: For best compatibility, copy `favicon.ico` to your website root
2. **Use PNG for modern browsers**: PNG files provide better quality and transparency
3. **Apple Touch Icon**: Essential for iOS home screen bookmarks
4. **Web Manifest**: Required for Progressive Web Apps
5. **Theme Color**: Matches browser UI to your brand colors
6. **Cache Headers**: Set long cache times for favicons (they rarely change)

## 🔧 Regenerating Favicons

To regenerate favicons from source logos:

```bash
# Generate all favicons
npm run generate-favicons

# Optimize existing favicons
npm run optimize-favicons
```

## 📦 Automation

Favicons are automatically regenerated when:
- Logo source files are updated
- Changes are pushed to the main branch
- Manual workflow dispatch is triggered
- Pull requests modify logo files

The GitHub Actions workflow handles all generation automatically.

## 🎯 Quality Settings

All favicons are generated with:
- **Lanczos3 resampling**: Highest quality resizing algorithm
- **PNG optimization**: Maximum compression without quality loss
- **Transparency preservation**: Alpha channel maintained where supported
- **Crisp rendering**: Optimized for pixel-perfect display at each size

## 📝 Notes

- All PNG files use maximum compression (level 9)
- ICO files contain 16×16, 32×32, and 48×48 sizes
- Transparency is preserved in all PNG outputs
- Files are optimized for web delivery

## 🔗 Related Documentation

- [Web App Manifest Specification](https://www.w3.org/TR/appmanifest/)
- [Apple Touch Icon Guidelines](https://developer.apple.com/library/archive/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html)
- [Favicon Best Practices](https://developers.google.com/search/docs/appearance/favicon-in-search)

---

Generated with ❤️ by TheUSDOX Assets Team
