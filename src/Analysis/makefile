DATA = ../../data
OUTPUT = ../../gen/output

all: $(OUTPUT)/Final_Report.pdf

install: 
	R --vanilla < Install_Packages.R

$(OUTPUT)/Final_Report.pdf: $(DATA)/prepared_data.csv Analysis.Rmd
	Rscript -e "ifelse(!dir.exists('../../gen/output'),dir.create('../../gen/output'),'Directory Exists')"
	Rscript -e "rmarkdown::render('Analysis.Rmd', output_file = '../../gen/output/Final_Report.pdf')"