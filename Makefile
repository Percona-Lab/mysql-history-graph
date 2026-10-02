SOURCES=mysql-history-graph.dot mysql-only-history.dot innodb-history-graph.dot mysql-bug.dot
SVGGRAPHS=$(SOURCES:.dot=.svg)
PNGGRAPHS=$(SOURCES:.dot=.png)

all: $(SOURCES) $(SVGGRAPHS) $(PNGGRAPHS)

clean:
	rm -rf $(SVGGRAPHS) $(PNGGRAPHS)

# mysql-history-graph.dot is generated from the same json the timeline reads.
mysql-history-graph.dot: data/vendors.json data/releases.json data/graph.json cmd/gendot/main.go
	go run ./cmd/gendot -dir data -o $@

%.png: %.dot
	dot -Tpng -o $@ $<

%.svg: %.dot
	dot -Tsvg -o $@ $<
