import React, { SVGProps } from 'react';

/**
 * USDO Token Icon Component
 * 
 * Usage:
 * import { UsdoIcon } from './react-svgs/tokens/UsdoIcon';
 * 
 * <UsdoIcon className="w-8 h-8" />
 * <UsdoIcon width={32} height={32} fill="currentColor" />
 */
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
      {/* Placeholder SVG content - replace with actual USDO icon design */}
      {/* Symbol-only design, no text as per branding guidelines */}
      <circle cx="12" cy="12" r="10" fill="currentColor" opacity="0.15" />
      <circle cx="12" cy="12" r="6" fill="currentColor" opacity="0.3" />
      <circle cx="12" cy="12" r="3" fill="currentColor" />
    </svg>
  );
}

export default UsdoIcon;
