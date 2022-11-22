

all: test 

test:
	sbt test


veryclean:
	git clean -fd

clean:
	rm -fr *.aux *.bbl *.blg *.log *.lof *.lot *.toc *.gz *.lol # *.pdf
	rm -rf code
	rm -rf test_run_dir
	rm -rf target
	rm -rf generated

wave:
	 sbt "testOnly WaveformCounterTest"

wave1:
	sbt "testOnly SimpleTest -- -DwriteVcd=1"

