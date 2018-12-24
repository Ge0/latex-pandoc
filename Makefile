NAME = output
PANDOC = pandoc
SRC = metadata.yml $(sort $(wildcard *.md))

PDF = $(NAME).pdf

all: $(PDF)

$(PDF): $(SRC) template.tex
	$(PANDOC) \
		--pdf-engine=xelatex -s --template=template.tex \
		-o $(PDF) $(SRC)
