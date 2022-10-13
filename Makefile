all:
	latexmk -pdf -outdir=build dissertation.tex

# For live previewing on macOS with the Skim PDF reader
watch:
	latexmk -pdf -pvc -e '$$pdf_previewer=q[open -a Skim]' -outdir=build dissertation.tex

clean:
	latexmk -c dissertation.tex.tex
