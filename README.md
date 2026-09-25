MySQL History Graph
===================

Graphs about MySQL version History, including forks

![MySQL History Graph](https://raw.github.com/dveeden/mysql-history-graph/master/mysql-history-graph.png)

Editing and Pull Requests
=========================

Edit the dot files and send me a pull request.


Building the Images
===================

The PNG and SVG files are created with GraphViz. The details about building can be found in the Makefile.

Interactive timeline
====================

`index.html` draws the same lineage as an interactive timeline: one lane per
family, releases placed by date, a panel with each release's date, status and
notes, lineage tracing, and filters by family and time range. It is one
self-contained file with no build step and no external requests, so any static
web server can host it:

    python3 -m http.server 8000

The page keeps its own copy of the lineage, so a change to
`mysql-history-graph.dot` also needs the matching change in the data at the
top of the script in `index.html`. Dates marked approximate (`c`) have not
been checked against release archives.

Related Projects
================

* [RDBMS Timeline](https://github.com/rafaelma/rdbms-timeline)
