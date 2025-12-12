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
      {/* Placeholder SVG content - replace with actual USDO icon paths */}
      <circle cx="12" cy="12" r="10" fill="currentColor" opacity="0.1" />
      <text
        x="12"
        y="16"
        textAnchor="middle"
        fontSize="10"
        fontWeight="bold"
        fill="currentColor"
      >
        USDO
      </text>
    </svg>
  );
}

export default UsdoIcon;
