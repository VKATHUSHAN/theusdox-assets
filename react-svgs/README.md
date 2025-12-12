# React SVG Components

React-ready SVG components for seamless integration into React, Next.js, and Vite applications.

## 📁 Directory Structure

```
react-svgs/
├── components/     # General SVG React components
├── tokens/         # Token icon components (USDO, TWUSD)
└── icons/          # Icon components (UI, social, etc.)
```

## ⚛️ Overview

All SVG assets are exported as React components for easy integration into modern JavaScript frameworks.

### Features
- TypeScript support
- Tree-shakeable
- Customizable via props
- Accessible (ARIA labels)
- Optimized file size

## 🚀 Usage

### Installation

These components can be used directly by importing from the repository or by copying into your project.

### React/Next.js

```jsx
import { UsdoIcon } from './react-svgs/tokens/UsdoIcon';
import { TwusdIcon } from './react-svgs/tokens/TwusdIcon';

export default function TokenDisplay() {
  return (
    <div className="flex gap-4">
      <UsdoIcon className="w-10 h-10" />
      <TwusdIcon className="w-10 h-10" />
    </div>
  );
}
```

### TypeScript

```tsx
import { UsdoIcon } from './react-svgs/tokens/UsdoIcon';
import type { SVGProps } from 'react';

interface TokenIconProps extends SVGProps<SVGSVGElement> {
  size?: number;
}

export function TokenIcon({ size = 24, ...props }: TokenIconProps) {
  return <UsdoIcon width={size} height={size} {...props} />;
}
```

### Vite

```jsx
import { UsdoIcon } from './react-svgs/tokens/UsdoIcon';

function App() {
  return (
    <div>
      <UsdoIcon className="w-8 h-8 text-primary" />
    </div>
  );
}
```

## 📋 Component Props

All SVG components accept standard SVG props:

```typescript
interface SVGComponentProps extends SVGProps<SVGSVGElement> {
  className?: string;
  width?: number | string;
  height?: number | string;
  fill?: string;
  stroke?: string;
  // ... all other SVG attributes
}
```

## 🎨 Customization

### Size

```jsx
// Using className (with Tailwind)
<UsdoIcon className="w-16 h-16" />

// Using props
<UsdoIcon width={64} height={64} />

// Using inline styles
<UsdoIcon style={{ width: 64, height: 64 }} />
```

### Color

```jsx
// Using className (with Tailwind)
<UsdoIcon className="text-blue-500" />

// Using props
<UsdoIcon fill="currentColor" />

// Using inline styles
<UsdoIcon style={{ color: '#0066FF' }} />
```

### Custom Styling

```jsx
<UsdoIcon 
  className="w-12 h-12 text-primary hover:text-primary-dark transition-colors"
  aria-label="USDO Token"
/>
```

## 📁 Component Structure

### Token Components

**Directory**: `tokens/`

Components:
- `UsdoIcon.tsx` - USDO token icon
- `TwusdIcon.tsx` - TWUSD token icon

```jsx
import { UsdoIcon } from './react-svgs/tokens/UsdoIcon';
```

### Icon Components

**Directory**: `icons/`

General-purpose icon components:
- UI icons
- Social media icons
- Action icons

```jsx
import { TwitterIcon } from './react-svgs/icons/TwitterIcon';
```

### General Components

**Directory**: `components/`

Logo and brand components:
- TheUSDOX logo
- Logo variants
- Brand symbols

```jsx
import { TheusdoxLogo } from './react-svgs/components/TheusdoxLogo';
```

## 🔧 Integration Examples

### Next.js App Router

```tsx
// app/components/TokenIcon.tsx
import { UsdoIcon } from '@/assets/react-svgs/tokens/UsdoIcon';

export function TokenIcon() {
  return (
    <div className="flex items-center gap-2">
      <UsdoIcon className="w-6 h-6" />
      <span>USDO</span>
    </div>
  );
}
```

### Vite + React

```tsx
// src/components/TokenIcon.tsx
import { UsdoIcon } from '../assets/react-svgs/tokens/UsdoIcon';

export function TokenIcon() {
  return <UsdoIcon className="w-8 h-8" />;
}
```

### Create React App

```tsx
// src/components/TokenIcon.js
import { UsdoIcon } from './assets/react-svgs/tokens/UsdoIcon';

export function TokenIcon() {
  return <UsdoIcon className="token-icon" />;
}
```

## ♿ Accessibility

All components include proper accessibility attributes:

```jsx
<UsdoIcon 
  aria-label="USDO Token"
  role="img"
  className="w-8 h-8"
/>
```

Custom aria-label:

```jsx
<UsdoIcon 
  aria-label="USDO Stablecoin - $1,000.00"
  className="w-8 h-8"
/>
```

## 📦 Component Template

All React SVG components follow this structure:

```tsx
import React, { SVGProps } from 'react';

export function UsdoIcon(props: SVGProps<SVGSVGElement>) {
  return (
    <svg
      width="24"
      height="24"
      viewBox="0 0 24 24"
      fill="currentColor"
      xmlns="http://www.w3.org/2000/svg"
      aria-label="USDO Token"
      role="img"
      {...props}
    >
      {/* SVG paths */}
    </svg>
  );
}
```

## 🎯 Best Practices

### Performance
- Use React.memo for frequently rendered icons
- Implement lazy loading for large icon sets
- Consider using sprite sheets for many icons

```jsx
import { memo } from 'react';
import { UsdoIcon } from './react-svgs/tokens/UsdoIcon';

export const MemoizedUsdoIcon = memo(UsdoIcon);
```

### Tree Shaking
- Import only what you need
- Use named imports
- Avoid importing entire directories

```jsx
// ✅ Good - tree-shakeable
import { UsdoIcon } from './react-svgs/tokens/UsdoIcon';

// ❌ Bad - imports everything
import * as Icons from './react-svgs/tokens';
```

### Styling
- Use className for Tailwind/CSS modules
- Use currentColor for inheriting text color
- Avoid inline styles when possible

```jsx
// ✅ Good
<UsdoIcon className="w-8 h-8 text-primary" />

// ⚠️ Acceptable
<UsdoIcon style={{ width: 32, height: 32 }} />
```

## 🔄 Generating Components

To generate new React components from SVG files:

```bash
# Using SVGR (example)
npx @svgr/cli --typescript --icon --replace-attr-values "#000=currentColor" ./tokens/usdo/usdo-icon.svg
```

## 📝 File Naming

Component files use PascalCase:
```
UsdoIcon.tsx
TwusdIcon.tsx
TheusdoxLogo.tsx
TwitterIcon.tsx
```

## 🔗 Related Assets

- **Source SVGs**: `/tokens/`, `/branding/logos/`, `/branding/icons/`
- **Usage Examples**: Component documentation in each directory
- **Design System**: `/branding/`

## 🆕 Adding New Components

1. Create SVG file in appropriate directory
2. Optimize SVG (remove unnecessary attributes)
3. Convert to React component
4. Add TypeScript types
5. Add accessibility attributes
6. Test in different frameworks
7. Update documentation

## 📄 License

These components are part of the TheUSDOX ecosystem. Use in official TheUSDOX applications and integrations.
