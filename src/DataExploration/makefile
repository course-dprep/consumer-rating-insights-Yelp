DATA = ../../data
EXPLORATION = ../../gen/exploration

all: $(EXPLORATION)/star_rating_summary.pdf $(EXPLORATION)/data_visualization_graphs.pdf $(EXPLORATION)/top_20_categories.pdf

install:
	R --vanilla < Install_Packages.R

$(DATA)/business_data.csv: Import_Data.R
	Rscript -e "ifelse(!dir.exists('../../data'),dir.create('../../data'),'Directory Exists')"
	R --vanilla < Import_Data.R

$(DATA)/cleaned_data_for_exploration.csv: $(DATA)/business_data.csv Clean_Data.R
	R --vanilla < Clean_Data.R

$(EXPLORATION)/star_rating_summary.pdf: $(DATA)/cleaned_data_for_exploration.csv Star_and_Review_Analysis.R
	Rscript -e "ifelse(!dir.exists('../../gen'),dir.create('../../gen'),'Directory Exists')"
	Rscript -e "ifelse(!dir.exists('../../gen/exploration'),dir.create('../../gen/exploration'),'Directory Exists')"
	R --vanilla < Star_and_Review_Analysis.R

$(EXPLORATION)/data_visualization_graphs.pdf: $(DATA)/cleaned_data_for_exploration.csv Visualization.R
	R --vanilla < Visualization.R

$(EXPLORATION)/top_20_categories.pdf: $(DATA)/cleaned_data_for_exploration.csv Visualization.R
	R --vanilla < Visualization.R
