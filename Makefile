NAME=pat_seq

all:
	pdflatex $(NAME); bibtex $(NAME); pdflatex $(NAME); pdflatex $(NAME)
v:
	evince $(NAME).pdf
clean:                                                                                                            
	(rm *.pdf *.aux *.log *.bbl *.blg *.ilg *.nlo *.nls *.toc *.out *.bak .Rhistory 2>&1 ; exit 0) > /dev/null	
com:
	git commit -a

