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
self-contained file with no build step and no external requests (the Poppins
font is embedded; its license is in `fonts/Poppins-OFL.txt`), so any static
web server can host it:

    python3 -m http.server 8000

Families are filtered from one menu: click to toggle, Alt-click (or "only")
to isolate, and click a family name on the chart to isolate it or restore
all. The filter is kept in the address (`#fam=`), so a filtered link opens
the same view. Brand marks for MySQL, MariaDB, Meta and Alibaba Cloud come
from [Simple Icons](https://simpleicons.org) (CC0); the trademarks belong to
their owners. The Percona Server for MySQL and VillageSQL logos
(`percona-server.svg`, `villagesql.svg`) are vector redraws of artwork
supplied by Percona; the Percona logomark (PXC and `favicon.svg`) is from
`percona/pdmysql-docs`. Families without a published mark get a monogram.

The page keeps its own copy of the lineage, so a change to
`mysql-history-graph.dot` also needs the matching change in the data at the
top of the script in `index.html`. Dates marked approximate (`c`) have not
been checked against release archives.

Related Projects
================

* [RDBMS Timeline](https://github.com/rafaelma/rdbms-timeline)
