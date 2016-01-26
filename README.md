markdown-notes
==============

Skeleton directory for note-taking in Markdown.

Includes a Makefile to convert `*.md` files to HTML and PDF, and some (IMHO) sane styling.

Usage
-----

Clone the repository and add any custom styles in style.css. Create Markdown files with the .md extension.

### Make Targets

`make` or `make html` will convert all md files to HTML.

`make pdf` or `make all` will convert all md file to HTML and PDF.

`make clean` will remove all generated files.

Dependencies
------------

-	[markdown-tool](https://github.com/geoffholden/markdown-tool/) to convert the Markdown to HTML
-	[wkhtmltopdf](http://wkhtmltopdf.org/) to convert HTML to PDF
