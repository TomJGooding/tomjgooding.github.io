CONTENT_DIR = ./content
OUTPUT_DIR = ./docs

CONTENT = $(shell find $(CONTENT_DIR) -name '*.md')
HTML = $(patsubst $(CONTENT_DIR)/%.md, $(OUTPUT_DIR)/%.html, $(CONTENT))

PANDOC_OPTS = --standalone \
	      --template templates/template.html \
	      --css style.css

.PHONY: build
build: $(HTML)

$(OUTPUT_DIR)/%.html: $(CONTENT_DIR)/%.md
	@mkdir -p $(@D)
	pandoc $(PANDOC_OPTS) $< -o $@
