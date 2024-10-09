all: DataPreparation DataExploration Analysis

DataPreparation: src/Datapreparation
	make -C src/DataPreparation

DataExploration: src/DataExploration
	make -C src/DataExploration

Analysis: DataPreparation src/Analysis
	make -C src/Analysis

clean:
	R -e "unlink('data', recursive = TRUE)"
	R -e "unlink('gen', recursive = TRUE)"
