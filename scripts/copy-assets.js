const fs = require('fs').promises;
const path = require('path');

// Define paths
const rootDir = path.join(__dirname, '..');
const distDir = path.join(rootDir, 'dist');

const resourcesToCopy = [
  'index.html',
  'robots.txt',
  'site.webmanifest',
  'CNAME',
  'images'
];

async function copyResource(sourcePath, destPath) {
  try {
    const stats = await fs.stat(sourcePath);

    if (stats.isDirectory()) {
      await fs.mkdir(destPath, { recursive: true });
      const items = await fs.readdir(sourcePath);

      for (const item of items) {
        await copyResource(
          path.join(sourcePath, item),
          path.join(destPath, item)
        );
      }
      console.log('Copied directory:', path.relative(rootDir, sourcePath));
    } else {
      await fs.copyFile(sourcePath, destPath);
      console.log('Copied file:', path.relative(rootDir, sourcePath));
    }
  } catch (err) {
    if (err.code === 'ENOENT') {
      console.warn('Warning: Not found -', path.relative(rootDir, sourcePath));
    } else {
      console.error('Error copying', path.relative(rootDir, sourcePath) + ':', err.message);
    }
  }
}

async function copyFiles() {
  console.log('Starting copy process...');

  try {
    await fs.mkdir(distDir, { recursive: true });
    console.log('Created dist directory');

    for (const resource of resourcesToCopy) {
      const sourcePath = path.join(rootDir, resource);
      const destPath = path.join(distDir, resource);
      await copyResource(sourcePath, destPath);
    }

    console.log('Copy process completed successfully!');
  } catch (err) {
    console.error('Error:', err.message);
    process.exit(1);
  }
}

copyFiles().catch(error => {
  console.error('Failed to copy files:', error);
  process.exit(1);
});
