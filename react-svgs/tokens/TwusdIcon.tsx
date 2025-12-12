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
      {/* Placeholder SVG content - replace with actual TWUSD icon design */}
      {/* Symbol-only design, no text as per branding guidelines */}
      <circle cx="12" cy="12" r="10" fill="currentColor" opacity="0.15" />
      <rect x="7" y="7" width="10" height="10" fill="currentColor" opacity="0.3" rx="1" />
      <circle cx="12" cy="12" r="2.5" fill="currentColor" />
    </svg>
  );
}

export default TwusdIcon;
