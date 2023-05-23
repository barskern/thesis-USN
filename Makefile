NAME=thesis

SRCS=\
	$(wildcard appendices/*) \
	$(wildcard chapters/*) \
	$(wildcard csvtables/*) \
	$(wildcard figures/*) \
	$(wildcard listings/*) \
	$(wildcard papers/*) \
	baseusn.sty \
	usnthesis.cls \
	$(NAME).bib \
	$(NAME).tex \
	glossary.tex

LATEX_FLAGS=-shell-escape
BIBER_FLAGS=

mkdir = @mkdir -p $(@D)

$(NAME).pdf: $(SRCS)
	$(mkdir)
	pdflatex $(LATEX_FLAGS) $(NAME)
	biber $(BIBER_FLAGS) $(NAME)
	makeglossaries $(NAME)
	pdflatex $(LATEX_FLAGS) $(NAME)
	pdflatex $(LATEX_FLAGS) $(NAME)

clean:
	-@$(RM) \
		$(wildcard $(NAME)-gnuplottex*) \
		$(addprefix $(NAME),.gnuploterrors .aux .bbl .bcf .blg .lof .log .lol .lot .out .pdf .run.xml .toc .acn .glo .ist .acr .alg .glg .gls)
.PHONY: clean
