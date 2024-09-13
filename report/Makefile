all: report.pdf

%.pdf: %.md
	pandoc --number-sections $< -o $@
