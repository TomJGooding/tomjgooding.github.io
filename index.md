---
title:  "Creating a website with pandoc"
date: 2026-06-12
---

## Getting started

1. Create your [GitHub Pages website](https://docs.github.com/en/pages/quickstart)
2. Add an empty `.nojekyll` file to bypass Jekyll processing
3. Create `index.md` with markdown content
4. Convert to html: `pandoc index.md -o index.html --standalone`
5. Print the default html template with `pandoc -D html`.
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
