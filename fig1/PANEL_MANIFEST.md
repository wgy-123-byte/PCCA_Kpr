# Main Figure 1 — panel-to-source crosswalk (real data)

| Panel | Content | Source file in `fig1/` | Section in `fig1.Rmd` | Status / note |
|---|---|---|---|---|
| A | Serum acetate / propionate / butyrate, Healthy vs T2D | `F1A_serum_SCFA.csv` | Panel A | 18 values, 3 replicates per group × 3 SCFA |
| B | MR assumptions schematic | `F1B.ai` (`raw_images/`) | Panel B | editable source file to be placed in `raw_images/` |
| C | MR beta (95% CI), DIAGRAM + UK Biobank | `F1C_MR_beta.csv` | Panel C | 4 rows; `method` still reads `IVW (specify)` → replace with the exact method |
| D | 13C-propionate tracing schematic | `F1D.ai` (`raw_images/`) | Panel D | editable source |
| E | Isotopologue heatmap, 28 metabolites × 12 mice | `F1E_isotopologue_heatmap.csv` | Panel E | wide matrix; values already row-scaled, plotted directly |
| F | Glucose+1 / Glucose+3, db/m vs db/db | `F1F_glucose_isotopologues.csv` | Panel F | wide table, 12 samples × 2 isotopologues |
| G | PTT / NaP timeline schematic | `F1G.ai` (`raw_images/`) | Panel G | editable source |
| H | Fasting glucose, Ctr vs NaP | `F1H_fasting_glucose.csv` | Panel H | 6 + 6 mice |
| I | PTT blood glucose, 0–120 min | `F1I_PTT_curve.csv` | Panel I | wide matrix; 6 time points (0/15/30/60/90/120), 6 mice per group |
| J | H&E + Oil Red O | `F1J.tif` (`raw_images/`) | Panels J/K/L | uncropped original to be placed in `raw_images/` |
| K | Kpr / Actin blot, Neonatal vs Lactating | `F1K.tif` (`raw_images/`) | Panels J/K/L | **no densitometry table supplied** — add one if required |
| L | Propionylome workflow schematic | `F1L.ai` (`raw_images/`) | Panels J/K/L | editable source |
| M | Log10 LFQ distribution | `F1M_LFQ_distribution.xlsx` | Panel M | 2 sheets: `Proteome` (7850 rows), `kpr` (345 rows); column `log10Intensity` |
| N | Sites per Lactating/Neonatal ratio quartile | `F1N_ratio_quartile_sites.csv` | Panel N | 225 site rows, `Regulated Type` = Q1 (93) / Q4 (132); **Q2/Q3 not supplied** |
| O | KEGG enrichment Q1 vs Q4 | `F1O_KEGG_enrichment.xlsx` | Panel O | sheets `Q1` (10 pathways), `Q4` (51), plus `Q1/Q4 Pathway2Protein` site mapping; `Q2`/`Q3` header-only |

Image-only panels are listed in `F1_image_panels_manifest.csv`; the actual `.ai` / `.tif` files must be copied into `raw_images/` (only the manifest was supplied with this data drop).
