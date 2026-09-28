MySQL History Graph
===================

The MySQL family tree: MySQL itself and the servers forked or built from it,
from the first release in 1995 to today.

**Interactive timeline: https://percona-lab.github.io/mysql-history-graph/**

This repository started as a copy of
[dveeden/mysql-history-graph](https://github.com/dveeden/mysql-history-graph)
by Daniël van Eeden. It keeps his GraphViz graphs and adds the interactive
timeline.

Interactive timeline
--------------------

`index.html` has one lane per family and places each release by date.

- **Families:** MySQL, MySQL Cluster (NDB), RonDB, VillageSQL, Percona Server,
  Percona XtraDB Cluster, GreatSQL, TenDB, MariaDB, InfiniDB/ColumnStore,
  Facebook MySQL, WebScaleSQL, AliSQL and Drizzle.
- **Release details:** click a release to see its date, support status and
  notes, and to trace the releases it came from and led to.
- **Filters:** pick one or more families to show only those, and zoom to a
  time range: all years, 1995–2005, 2005–2015, 2014–today, or the Innovation
  release era.
- **Events:** milestones such as the founding of MySQL AB and Percona, Sun
  buying MySQL AB, Oracle buying Sun, and the launch of the OurSQL Foundation.
- **Shareable links:** the selected release, time range and family filter
  are kept in the URL, so a link opens the same view.

Some dates are approximate or inferred. The page marks each one and explains
why.

The page is a single file with no build step and no external requests. The
Poppins font is embedded in it. To run it locally:

    python3 -m http.server 8000

Then open http://localhost:8000/.

GraphViz graphs
---------------

| Source | Shows |
| --- | --- |
| `mysql-history-graph.dot` | MySQL and its forks |
| `mysql-only-history.dot` | MySQL releases only |
| `innodb-history-graph.dot` | InnoDB versions, from MySQL 5.1 to 5.6, and XtraDB |
| `mysql-bug.dot` | Life cycle of a MySQL bug report |

![MySQL History Graph](mysql-history-graph.png)

Rebuild the PNG and SVG files with GraphViz:

    make

`bug-tide/` holds Jupyter notebooks that chart open MySQL bugs per server
version, using data from bugs.mysql.com.

Contributing
------------

The timeline keeps its own copy of the lineage, in the data at the top of the
script in `index.html`. If you add or correct a release, update both
`index.html` and the matching `.dot` file, then run `make`. Pull requests are
welcome, especially ones that replace an approximate date with a sourced one.

Changes to `master` are published to GitHub Pages automatically.

License
-------

BSD 3-Clause, see `LICENSE`. The embedded Poppins font is under the SIL Open
Font License, see `fonts/Poppins-OFL.txt`.

Related projects
----------------

* [dveeden/mysql-history-graph](https://github.com/dveeden/mysql-history-graph),
  the original
* [RDBMS Timeline](https://github.com/rafaelma/rdbms-timeline)
