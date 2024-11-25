1. Come up with teh Logo and favicon
2. Update site.webmanifest after 1
3. Check proper ALT image generation
4. Update robots.txt:
```shell
# Allow search engines to crawl the homepage
User-agent: *
Allow: /$

# Allow search engines to crawl the /products page
Allow: /products$

# Allow search engines to crawl any pages under /products/ (e.g., /products/item1, /products/item2)
Allow: /products/

# Disallow everything else
Disallow: /
```
5. Add 404 page