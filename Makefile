FILENAME=example

all: ${FILENAME}.pdf

${FILENAME}.pdf: ${FILENAME}.tex *.sty
	rubber -Wall -s --pdf ${FILENAME}.tex

clean:
	rm -f *.log *.nav *.snm *.toc *.aux *.out

distclean: clean
	rm -f ${FILENAME}.pdf

