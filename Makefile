

all: test 

test:
#	sbt test
	sbt "testOnly WaveformCounterTest"


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

hdl:
	#Enter the number of your target class for verilog generation
	sbt run
