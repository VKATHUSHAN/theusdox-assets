#!/usr/bin/env node

/**
 * Logo Variant Generator
 * 
 * This script generates multiple size variants of TheUSDOX logo files.
 * It uses the Sharp library to resize PNG images while maintaining quality.
 * 
 * USAGE:
 *   npm install sharp
 *   node scripts/generate-logo-variants.js
 * 
 * OR:
 *   npm run generate:variants
 * 
 * OUTPUT:
 *   Generates resized logo variants in branding/logos/variants/
 *   Sizes: 256px, 512px, 1024px, 2048px (width, maintaining aspect ratio)
 */

// Check if Sharp is available
let sharp;
try {
  sharp = require('sharp');
} catch (error) {
  console.error('✗ Error: Sharp library not found.');
  console.error('  Please install it by running: npm install sharp');
  process.exit(1);
}

const fs = require('fs');
const path = require('path');

// Configuration
const SOURCE_DIR = path.join(__dirname, '../branding/logos');
const OUTPUT_DIR = path.join(SOURCE_DIR, 'variants');
const SIZES = [256, 512, 1024, 2048];

// Source logo files (update these if files are renamed)
const LOGO_FILES = [
  'theusdox-twusd-logo.png',
  'theusdox-usdo-logo.png',
  'theusdox-care-logo.png'
];

/**
 * Ensure output directory exists
 */
function ensureOutputDir() {
  if (!fs.existsSync(OUTPUT_DIR)) {
    fs.mkdirSync(OUTPUT_DIR, { recursive: true });
    console.log(`✓ Created output directory: ${OUTPUT_DIR}`);
  }
}

/**
 * Generate a resized variant of a logo
 * @param {string} sourcePath - Path to source image
 * @param {string} outputPath - Path to output image
 * @param {number} width - Target width in pixels
 * 
 * Note: withoutEnlargement is set to false to allow upscaling.
 * This is intentional to generate larger variants (e.g., 2048px) from
 * source images that may be smaller. The quality is maintained through
 * Sharp's high-quality resize algorithms.
 */
async function generateVariant(sourcePath, outputPath, width) {
  try {
    await sharp(sourcePath)
      .resize(width, null, {
        fit: 'inside',
        withoutEnlargement: false
      })
      .png({
        quality: 100,
        compressionLevel: 9
      })
      .toFile(outputPath);
    
    const stats = fs.statSync(outputPath);
    const sizeKB = (stats.size / 1024).toFixed(1);
    console.log(`  ✓ Generated ${path.basename(outputPath)} (${sizeKB} KB)`);
    return true;
  } catch (error) {
    console.error(`  ✗ Error generating ${path.basename(outputPath)}:`, error.message);
    return false;
  }
}

/**
 * Process a single logo file
 * @param {string} logoFile - Logo filename
 */
async function processLogo(logoFile) {
  const sourcePath = path.join(SOURCE_DIR, logoFile);
  
  // Check if source file exists
  if (!fs.existsSync(sourcePath)) {
    console.error(`✗ Source file not found: ${logoFile}`);
    return { success: 0, failed: SIZES.length };
  }
  
  console.log(`\nProcessing: ${logoFile}`);
  
  // Get original image dimensions
  try {
    const metadata = await sharp(sourcePath).metadata();
    console.log(`  Original size: ${metadata.width}x${metadata.height}`);
  } catch (error) {
    console.error(`  ✗ Error reading image metadata:`, error.message);
    return { success: 0, failed: SIZES.length };
  }
  
  let successCount = 0;
  let failedCount = 0;
  
  // Generate variants for each size
  for (const size of SIZES) {
    const baseName = path.basename(logoFile, '.png');
    const outputFileName = `${baseName}-${size}px.png`;
    const outputPath = path.join(OUTPUT_DIR, outputFileName);
    
    const success = await generateVariant(sourcePath, outputPath, size);
    if (success) {
      successCount++;
    } else {
      failedCount++;
    }
  }
  
  return { success: successCount, failed: failedCount };
}

/**
 * Main function
 */
async function main() {
  console.log('=================================');
  console.log('TheUSDOX Logo Variant Generator');
  console.log('=================================\n');
  
  ensureOutputDir();
  
  let totalSuccess = 0;
  let totalFailed = 0;
  
  // Process each logo file
  for (const logoFile of LOGO_FILES) {
    const result = await processLogo(logoFile);
    totalSuccess += result.success;
    totalFailed += result.failed;
  }
  
  // Summary
  console.log('\n=================================');
  console.log('Summary:');
  console.log(`  ✓ Successfully generated: ${totalSuccess} variants`);
  if (totalFailed > 0) {
    console.log(`  ✗ Failed: ${totalFailed} variants`);
  }
  console.log('=================================\n');
  
  if (totalFailed > 0) {
    process.exit(1);
  }
}

// Run the script
main().catch(error => {
  console.error('\n✗ Fatal error:', error);
  process.exit(1);
});
