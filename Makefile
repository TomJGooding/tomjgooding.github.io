PANDOC_OPTS = --standalone \
	      --template templates/template.html \
	      --include-after-body includes/footer.html \
	      --css style.css

docs/index.html: content/index.md
	pandoc $(PANDOC_OPTS) $< -o $@
