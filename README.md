
https://its.mw/posts/hugo-responsive-images/


## Dynamic Categories w/o _index.html

If _index.md Exists:
    Hugo treats the directory (content/categories/your-category/) as a section or taxonomy term.
    The content in _index.md becomes the content of the category page.
    The layout used will be layouts/_default/list.html or a more specific one like layouts/categories/list.html.

If _index.md Does Not Exist:
    Hugo looks for a template (like layouts/categories/list.html) to dynamically generate the page based on taxonomy data (e.g., .Site.Taxonomies.categories).


## Generate Placeholder images

```shell
setup-images.sh
```

## Debug

Execute
```shell
./debug.shx
```

Start Debug hugo server:
```shell
rm -rf public resources && hugo server -D --cleanDestinationDir --buildDrafts  --disableFastRender
```

Visit http://localhost:1313/debug/ to see the detailed debug information

The script and debug page will help us identify:
    If categories are properly configured in config.yaml
    If taxonomy templates are in the correct location
    If product files have correct category front matter
    If all required templates are present
    Any permission issues
    The actual content being processed by Hugo


Localization: https://www.regisphilibert.com/blog/2018/08/hugo-multilingual-part-2-i18n-string-localization/
