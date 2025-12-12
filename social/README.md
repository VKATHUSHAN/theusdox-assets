# Social Media Assets

Assets optimized for social media platforms and sharing.

## 📁 Directory Structure

```
social/
├── banners/            # Social media banners and covers
├── og-images/          # Open Graph images for link sharing
└── profile-icons/      # Profile pictures and avatars
```

## 📱 Available Assets

### Banners
**Directory**: `banners/`  
**Purpose**: Cover images, headers, banners for social platforms

Platform-specific sizes:
- Twitter/X Header: 1500×500 pixels
- LinkedIn Banner: 1584×396 pixels
- Facebook Cover: 820×312 pixels
- YouTube Banner: 2560×1440 pixels
- Discord Banner: 960×540 pixels

### OG Images
**Directory**: `og-images/`  
**Purpose**: Images displayed when sharing links

Standard size: 1200×630 pixels  
Format: PNG or JPG  
Usage: Website meta tags, social sharing

### Profile Icons
**Directory**: `profile-icons/`  
**Purpose**: Profile pictures and avatars

Sizes:
- 400×400 pixels (standard)
- 512×512 pixels (high-res)
- 1024×1024 pixels (maximum quality)

## 📝 File Naming Convention

All files use kebab-case:
```
✅ twitter-banner-dark.png
✅ og-image-homepage.png
✅ profile-icon-512px.png

❌ Twitter_Banner_Dark.png
❌ OG Image Homepage.png
❌ ProfileIcon512px.png
```

## 🎨 Design Guidelines

### Banners
- High-resolution, optimized for web
- Include TheUSDOX branding
- Safe area for profile pictures
- Works on both desktop and mobile
- File size < 5MB

### OG Images
- 1200×630 pixels (recommended)
- Eye-catching design
- Include logo and title text
- Optimized file size (< 1MB)
- Clear and readable

### Profile Icons
- Square format (1:1 aspect ratio)
- Recognizable at small sizes
- Transparent or solid background
- High contrast
- Centered design

## 🔧 Implementation

### Open Graph Meta Tags

```html
<!-- Homepage OG Image -->
<meta property="og:image" content="https://theusdox.com/assets/social/og-images/og-image-homepage.png" />
<meta property="og:image:width" content="1200" />
<meta property="og:image:height" content="630" />
<meta property="og:image:type" content="image/png" />

<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:image" content="https://theusdox.com/assets/social/og-images/og-image-homepage.png" />
```

### React/Next.js (next-seo)

```jsx
import { NextSeo } from 'next-seo';

export default function Page() {
  return (
    <>
      <NextSeo
        title="TheUSDOX"
        description="Decentralized stablecoin ecosystem"
        openGraph={{
          images: [
            {
              url: 'https://theusdox.com/assets/social/og-images/og-image-homepage.png',
              width: 1200,
              height: 630,
              alt: 'TheUSDOX',
            },
          ],
        }}
      />
      {/* Page content */}
    </>
  );
}
```

## 📊 Platform Specifications

### Twitter/X
- **Banner**: 1500×500 pixels
- **Profile**: 400×400 pixels
- **Format**: PNG or JPG
- **Max Size**: 5MB

### LinkedIn
- **Banner**: 1584×396 pixels
- **Profile**: 400×400 pixels
- **Format**: PNG or JPG
- **Max Size**: 8MB

### Facebook
- **Cover**: 820×312 pixels
- **Profile**: 180×180 pixels (displays as circle)
- **Format**: PNG or JPG
- **Max Size**: 100KB

### Discord
- **Server Icon**: 512×512 pixels
- **Banner**: 960×540 pixels (16:9 ratio)
- **Format**: PNG or JPG
- **Max Size**: 10MB

### YouTube
- **Banner**: 2560×1440 pixels
- **Profile**: 800×800 pixels
- **Safe Area**: 1546×423 pixels (always visible)
- **Format**: PNG or JPG
- **Max Size**: 6MB

## 🎯 Use Cases

### Website Sharing
```html
<!-- When someone shares your website -->
<meta property="og:image" content="/social/og-images/og-image-homepage.png" />
```

### Blog Posts
```html
<!-- Specific OG image for blog posts -->
<meta property="og:image" content="/social/og-images/og-image-blog.png" />
```

### Product Pages
```html
<!-- Token-specific OG images -->
<meta property="og:image" content="/social/og-images/og-image-usdo.png" />
```

## ✅ Optimization Checklist

Before adding new social assets:
- [ ] Correct dimensions for target platform
- [ ] Optimized file size (TinyPNG, ImageOptim)
- [ ] Proper file naming (kebab-case)
- [ ] Tested on target platform
- [ ] Works on light and dark themes
- [ ] Text is readable at thumbnail size
- [ ] Branding is consistent
- [ ] Logo/icon included

## 🔗 Related Assets

- **Logos**: `/branding/logos/`
- **Colors**: `/branding/colors/`
- **Marketing**: `/marketing/`

## 📄 Testing Tools

- [Twitter Card Validator](https://cards-dev.twitter.com/validator)
- [Facebook Sharing Debugger](https://developers.facebook.com/tools/debug/)
- [LinkedIn Post Inspector](https://www.linkedin.com/post-inspector/)
- [OpenGraph.xyz](https://www.opengraph.xyz/)
