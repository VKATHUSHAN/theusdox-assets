import React, { SVGProps } from 'react';

/**
 * TWUSD Token Icon Component
 * 
 * Usage:
 * import { TwusdIcon } from './react-svgs/tokens/TwusdIcon';
 * 
 * <TwusdIcon className="w-8 h-8" />
 * <TwusdIcon width={32} height={32} fill="currentColor" />
 */
export function TwusdIcon(props: SVGProps<SVGSVGElement>) {
  return (
    <svg
      width="24"
      height="24"
      viewBox="0 0 24 24"
      fill="currentColor"
      xmlns="http://www.w3.org/2000/svg"
      aria-label="TWUSD Token"
      role="img"
      {...props}
    >
      {/* Placeholder SVG content - replace with actual TWUSD icon paths */}
      <circle cx="12" cy="12" r="10" fill="currentColor" opacity="0.1" />
      <text
        x="12"
        y="14"
        textAnchor="middle"
        fontSize="7"
        fontWeight="bold"
        fill="currentColor"
      >
        TWUSD
      </text>
    </svg>
  );
}

export default TwusdIcon;
