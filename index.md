---
title:  "Creating a website with pandoc"
date: 2026-06-12
---

## Getting started

1. Create your [GitHub Pages website](https://docs.github.com/en/pages/quickstart)
2. Add an empty `.nojekyll` file to bypass Jekyll processing
3. Create `index.md` with Markdown content
4. Convert to HTML: `pandoc index.md -o index.html --standalone`
5. Print the default HTML template with `pandoc --print-default-template html`.
   Notice the use of variables like title, author, date, etc.
6. Add a metadata block at the top of `index.md`.
   For example:

   ```
   ---
   title: "Creating a website with pandoc"
   date: 2026-06-12
   ---
   ```

7. Metadata can also be set on the command line with the `-M/--metadata` option.
   For example: `--metadata=lang:en --metadata=author:"Tom Gooding"`

## Add custom template and CSS

1. Output the default HTML template to a file:

   ```
   pandoc -o template.html --print-default-template html
   ```

2. Edit `template.html` and remove the `<style>` block
3. Create `style.css` with your custom stylesheet
4. Generate HTML using the custom template and CSS:

   ```
   pandoc index.md -o index.html --standalone --template template.html --css style.css
   ```
