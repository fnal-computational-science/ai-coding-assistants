QMD_FILES := $(shell find . -name "*.qmd")
MD_FILES := $(QMD_FILES:.qmd=.md)

all: $(MD_FILES)

%.md: %.qmd
	quarto render $<
