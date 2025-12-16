#!/usr/bin/env node

/**
 * Favicon Generation Script
 * Generates multiple favicon sizes from source logo images
 * Uses Sharp for high-quality image processing and optimization
 */

const fs = require('fs');
const path = require('path');
const sharp = require('sharp');
const pngToIco = require('png-to-ico');

// Configuration
const config = {
  logos: [
    {
      name: 'theusdox',
      source: 'TheUSDOX-LOGO.png',
      outputDir: 'favicons/theusdox'
    },
    {
      name: 'usdoxcare',
      source: 'USDOXCARE-ORGANIZATION-LOGO .jpg',
      outputDir: 'favicons/usdoxcare'
    }
  ],
  sizes: [
    { size: 16, name: 'favicon-16x16.png' },
    { size: 32, name: 'favicon-32x32.png' },
    { size: 48, name: 'favicon-48x48.png' },
    { size: 64, name: 'favicon-64x64.png' },
    { size: 128, name: 'favicon-128x128.png' },
    { size: 180, name: 'apple-touch-icon-180x180.png' },
    { size: 192, name: 'android-chrome-192x192.png' },
    { size: 512, name: 'android-chrome-512x512.png' }
  ],
  icoSizes: [16, 32, 48] // Sizes to include in .ico file
};

/**
 * Ensure directory exists
 */
function ensureDir(dir) {
  if (!fs.existsSync(dir)) {
    fs.mkdirSync(dir, { recursive: true });
  }
}

/**
 * Generate a single favicon size
 */
async function generateFavicon(sourcePath, outputPath, size) {
  try {
    await sharp(sourcePath)
      .resize(size, size, {
        kernel: sharp.kernel.lanczos3,
        fit: 'contain',
        background: { r: 0, g: 0, b: 0, alpha: 0 }
      })
      .png({
        compressionLevel: 9,
        adaptiveFiltering: true,
        palette: true
      })
      .toFile(outputPath);
    
    console.log(`✓ Generated: ${outputPath} (${size}x${size})`);
    return outputPath;
  } catch (error) {
    console.error(`✗ Error generating ${outputPath}:`, error.message);
    throw error;
  }
}

/**
 * Generate .ico file from PNG files
 */
async function generateIcoFile(pngPaths, outputPath) {
  try {
    const buffers = await Promise.all(
      pngPaths.map(pngPath => fs.promises.readFile(pngPath))
    );
    
    const icoBuffer = await pngToIco(buffers);
    await fs.promises.writeFile(outputPath, icoBuffer);
    
    console.log(`✓ Generated: ${outputPath}`);
  } catch (error) {
    console.error(`✗ Error generating ${outputPath}:`, error.message);
    throw error;
  }
}

/**
 * Optimize existing PNG file
 */
async function optimizePng(filePath) {
  try {
    const tempPath = filePath + '.tmp';
    await sharp(filePath)
      .png({
        compressionLevel: 9,
        adaptiveFiltering: true,
        palette: true
      })
      .toFile(tempPath);
    
    await fs.promises.rename(tempPath, filePath);
    console.log(`✓ Optimized: ${filePath}`);
  } catch (error) {
    console.error(`✗ Error optimizing ${filePath}:`, error.message);
    throw error;
  }
}

/**
 * Generate all favicons for a single logo
 */
async function generateFaviconsForLogo(logo) {
  console.log(`\n📦 Processing ${logo.name}...`);
  
  const sourcePath = path.join(process.cwd(), logo.source);
  const outputDir = path.join(process.cwd(), logo.outputDir);
  
  // Check if source exists
  if (!fs.existsSync(sourcePath)) {
    console.error(`✗ Source file not found: ${sourcePath}`);
    return;
  }
  
  // Ensure output directory exists
  ensureDir(outputDir);
  
  // Generate all sizes
  const generatedPngs = [];
  for (const { size, name } of config.sizes) {
    const outputPath = path.join(outputDir, name);
    await generateFavicon(sourcePath, outputPath, size);
    generatedPngs.push({ path: outputPath, size });
  }
  
  // Generate .ico file with specific sizes
  const icoPaths = generatedPngs
    .filter(png => config.icoSizes.includes(png.size))
    .map(png => png.path);
  
  const icoPath = path.join(outputDir, 'favicon.ico');
  await generateIcoFile(icoPaths, icoPath);
  
  console.log(`✅ Completed ${logo.name}`);
}

/**
 * Optimize all existing favicon files
 */
async function optimizeExistingFavicons() {
  console.log('\n🔧 Optimizing existing favicons...');
  
  for (const logo of config.logos) {
    const outputDir = path.join(process.cwd(), logo.outputDir);
    
    if (!fs.existsSync(outputDir)) {
      console.log(`⚠ Directory not found: ${outputDir}`);
      continue;
    }
    
    console.log(`\nOptimizing ${logo.name}...`);
    
    const files = fs.readdirSync(outputDir);
    const pngFiles = files.filter(f => f.endsWith('.png'));
    
    for (const file of pngFiles) {
      const filePath = path.join(outputDir, file);
      await optimizePng(filePath);
    }
  }
  
  console.log('\n✅ Optimization complete');
}

/**
 * Main execution
 */
async function main() {
  const args = process.argv.slice(2);
  const optimizeOnly = args.includes('--optimize-only');
  
  console.log('🎨 Favicon Generation System');
  console.log('============================');
  
  try {
    if (optimizeOnly) {
      await optimizeExistingFavicons();
    } else {
      // Generate all favicons
      for (const logo of config.logos) {
        await generateFaviconsForLogo(logo);
      }
      
      console.log('\n✅ All favicons generated successfully!');
      console.log('\n📝 Next steps:');
      console.log('   - Check the favicons/ directory for generated files');
      console.log('   - Review favicons/USAGE.md for integration instructions');
      console.log('   - Use npm run optimize-favicons to re-optimize existing files');
    }
  } catch (error) {
    console.error('\n❌ Error:', error.message);
    process.exit(1);
  }
}

// Run if executed directly
if (require.main === module) {
  main();
}

module.exports = { generateFaviconsForLogo, optimizeExistingFavicons };
