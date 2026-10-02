Prompts
=======

The interactive timeline was built with Claude Code, an AI coding assistant.
This file keeps the prompts, so anyone can repeat or extend the work, and a
reusable prompt for routine updates.

Updating releases
-----------------

Paste this into an AI coding assistant opened on this repository. Change the
first line to the families you want checked.

> Check the MySQL family tree for new or changed releases in: MySQL, MySQL
> Cluster, Percona Server, Percona XtraDB Cluster, MariaDB. For each family,
> compare the entries in `data/releases.json` with the vendor's own release
> notes.
>
> - Add each missing major or LTS series, dated by the month of its first GA
>   build. Put the first GA build and its exact date in the note, for example
>   "First GA release 8.4.0-1 on 28 August 2024."
> - Correct any date that the release notes contradict, and drop the
>   approximate flag (`c`, `q`, `v` or `u`) from any date you confirm. Keep
>   the flag on any date you could not confirm.
> - Add the lineage edges: the release it is built on, and the previous
>   release in its own family.
> - Add the links to `data/graph.json`, then run `make` to regenerate
>   `mysql-history-graph.dot`.
> - Open the page in a browser, select each new release, and confirm there
>   are no console errors.
>
> List every change with the source you used for it.

How it was built
----------------

The prompts, in order, lightly edited for typos.

1. **The timeline.** "Turn `mysql-history-graph.dot` into an interactive
   timeline: one lane per family, releases placed by date, a panel with each
   release's date, status and notes, lineage tracing, and filters by family
   and time range. One self-contained HTML file with no build step."
2. **The look.** "Restyle it in the Percona look" and "embed Poppins so the
   page looks the same everywhere."
3. **Percona accuracy.** "Check the accuracy of the timeline, especially
   related to Percona software, and add anything that is missing (like
   PXC)." Every Percona Server and PXC date was checked against Percona's
   release notes; the sources are in the commit messages.
4. **Filtering.** "Common use case is to focus on several, one or all
   families, with the ability to toggle items on or off at will. Use filter
   menus with checkboxes, toggle a series on click, and isolate it with a
   modified click." This gave the Families menu, the "only" buttons and the
   clickable lane names.
5. **Logos.** "Use logos next to the product names on the left", with the
   Percona Server, VillageSQL and Percona logos supplied as files.
6. **Hosting.** "There are a lot of errors in the console" (the page threw
   when a host embedded it in a sandboxed frame), and feedback from Daniël
   van Eeden: link back to the repository, use the full width of large
   screens, and make it easy to show all families or just one.
