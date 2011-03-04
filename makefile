DOCNAME=resume

default: pdflatex preview

pdflatex: ${DOCNAME}.tex
	pdflatex ${DOCNAME}.tex

texify: ${DOCNAME}.tex
	texify ${DOCNAME}.tex

dvips: ${DOCNAME}.dvi
	dvips ${DOCNAME}.dvi

ps2pdf: ${DOCNAME}.ps
	ps2pdf ${DOCNAME}.ps

preview: ${DOCNAME}.pdf
	evince ${DOCNAME}.pdf

winpreview: ${DOCNAME}.pdf
	#C:\Windows\System32\cmd.exe start 
	AcroRd32.exe ${DOCNAME}.pdf

clean:
	rm --force ${DOCNAME}.pdf ${DOCNAME}.log

cleanall:
	rm --force ${DOCNAME}.dvi ${DOCNAME}.ps ${DOCNAME}.pdf
