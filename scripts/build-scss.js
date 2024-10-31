// File: scripts/build-scss.js

const sass = require('sass');
const fs = require('fs');
const path = require('path');
const { glob } = require('glob');

// Get project root directory (1 level up from scripts folder)
const projectRoot = path.join(__dirname, '..');
console.log('Project root:', projectRoot);

// Create dist directory if it doesn't exist
const distPath = path.join(projectRoot, 'dist');
console.log('Dist path:', distPath);

if (!fs.existsSync(distPath)) {
  console.log('Creating dist directory...');
  fs.mkdirSync(distPath, { recursive: true });
}

async function buildScss() {
  try {
    // Look for SCSS files in the entire project
    const searchPattern = '**/*.scss';
    console.log('Searching for SCSS files with pattern:', searchPattern);
    console.log('Search starting from:', projectRoot);

    const files = await glob(searchPattern, {
      ignore: ['node_modules/**', 'dist/**'],
      cwd: projectRoot,
      absolute: false
    });

    console.log('Found SCSS files:', files);

    if (files.length === 0) {
      console.log('No SCSS files found! Please check your file structure.');
      return;
    }

    for (const file of files) {
      try {
        // Get absolute path for the input file
        const inputPath = path.join(projectRoot, file);
        console.log('Processing file:', inputPath);

        // Verify file exists
        if (!fs.existsSync(inputPath)) {
          console.error(`File does not exist: ${inputPath}`);
          continue;
        }

        // Log file content
        const scssContent = fs.readFileSync(inputPath, 'utf8');
        console.log('SCSS content:', scssContent);

        // Compile SCSS to CSS
        const result = sass.compile(inputPath, {
          style: 'expanded'
        });

        // Create output path preserving directory structure
        const relativePath = path.dirname(file);
        const outputDir = path.join(distPath, relativePath);
        const basename = path.basename(file, '.scss');
        const outputPath = path.join(outputDir, `${basename}.css`);

        console.log('Output directory:', outputDir);
        console.log('Output path:', outputPath);

        // Create output directory
        if (!fs.existsSync(outputDir)) {
          console.log('Creating output directory:', outputDir);
          fs.mkdirSync(outputDir, { recursive: true });
        }

        // Write the CSS file
        fs.writeFileSync(outputPath, result.css);
        console.log(`Successfully processed: ${file} -> ${outputPath}`);
        console.log('CSS content length:', result.css.length);
        console.log('CSS content:', result.css);

      } catch (error) {
        console.error(`Error processing ${file}:`);
        console.error(error);
      }
    }
  } catch (err) {
    console.error('Error during build:', err);
  }
}

// Run the build
buildScss().then(() => {
  console.log('Build process completed');
}).catch(err => {
  console.error('Build process failed:', err);
});
