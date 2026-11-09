# Shared exports (`data/`)

The per-panel source tables are already placed in `fig1/` and `fig2/` next to their `.Rmd` files. This folder is reserved for any additional master exports you wish to deposit, e.g.:

| Suggested file | Content |
|---|---|
| `metadata_samples.csv` | sample / mouse IDs, group, batch, replicate |
| `blot_densitometry_master.csv` | ImageJ/Fiji measurements for every uncropped blot, with panel letter and lane ID |
| `mr_summary_statistics.csv` | full MR summary statistics behind Figure 1C |

**Human-derived data.** Keep only aggregate, non-identifiable values needed to reproduce the panels in this public repository; state any controlled-access route in the Data availability statement.
