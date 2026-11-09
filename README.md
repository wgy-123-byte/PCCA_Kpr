# Source data and reproducible code for Main Figures 1–2 (real data)

**v3 — 2026-11-10.** Rebuilt from the corrected source tables: the Figure 2 O and P value sets were swapped to the corrected exports, and the P group label is now `NaP_siSIRT1`. See `CHANGELOG.md` for the exact deposited values. Everything else is unchanged from v2.

One folder per main figure, one R Markdown file per figure — the layout of `YongxinLiu/Zhang2019NBT` (Nature Biotechnology 2019):

```
.
├── data/                  # shared exports (see data/README.md)
├── script/                # theme_pub.R, utils_stats.R (shared R helpers)
├── fig1/
│   ├── fig1.Rmd           # ★ statistics + plots for every panel, written against the real tables
│   ├── fig1.html          # knitted report — generate and commit (see below)
│   ├── F1A … F1O_*.csv / .xlsx   # original exported source data
│   ├── F1_image_panels_manifest.csv
│   ├── PANEL_MANIFEST.md
│   └── raw_images/        # put F1B.ai … F1K.tif here
├── fig2/
│   ├── fig2.Rmd           # ★ same for Main Figure 2
│   ├── fig2.html          # knitted report — generate and commit
│   ├── F2A … F2U_*.csv
│   ├── F2_image_panels_manifest.csv
│   ├── PANEL_MANIFEST.md
│   └── raw_images/        # put F2C.tif … F2T.tif, F2Q.ai here
├── Data_availability_statement.md
├── init_and_push.sh
├── LICENSE.md
└── README.md
```

## ⚠️ Why the repository showed no `.Rmd` after you uploaded a ZIP

GitHub / Gitee **do not unzip files uploaded through the web interface**. If you dragged `MainFigures_SourceData.zip` into the repository, the repository contains exactly one file (`…zip`) and no `fig1/` or `fig2/` folders — so neither `fig1.Rmd` nor `fig2.Rmd` is visible. You must **extract the ZIP on your computer and upload the folder's contents** (or use `git push`). After uploading, the repository root must show the `fig1/` and `fig2/` folders, and opening them must show `fig1.Rmd` / `fig2.Rmd` next to the CSV/XLSX files.

## Reproduce

```bash
Rscript -e "rmarkdown::render('fig1/fig1.Rmd')"   # -> fig1/fig1.html + fig1/figure/
Rscript -e "rmarkdown::render('fig2/fig2.Rmd')"   # -> fig2/fig2.html + fig2/figure/
```

Requires R >= 4.1 and: `rmarkdown`, `knitr`, `readr`, `readxl`, `dplyr`, `tidyr`, `ggplot2`, `ggpubr`, `patchwork`, `scales` (`pheatmap` optional, falls back to base `heatmap`). Commit both `*.html` files.

## What the deposited tables actually contain

- `F1E_isotopologue_heatmap.csv` is a 28 × 12 **wide matrix** of already row-scaled values — the Rmd plots it directly, without a second z-scoring.
- `F1I_PTT_curve.csv` is a **wide matrix**: row 2 holds the 6 time points (0/15/30/60/90/120 min), rows 3+ hold one mouse per row; the Rmd reshapes it.
- `F1M_LFQ_distribution.xlsx` has two sheets (`Proteome`, `kpr`) and a `log10Intensity` column.
- `F1N_ratio_quartile_sites.csv` is the site-level table with `Regulated Type` = **Q1 (93) / Q4 (132)**; Q2/Q3 rows were not supplied.
- `F1O_KEGG_enrichment.xlsx` has 10 sheets; only `Q1` (10 pathways) and `Q4` (51 pathways) contain enrichment rows, plus `Q1/Q4 Pathway2Protein` site-level mapping.
- `F2A_pathway_interest_size.csv` lists one gene set per pathway; interest size is computed as the number of genes in `Related Genes`.
- `F2B_Kpr_sites_per_protein.csv` is a 70-row site table; per-protein site counts are computed by `count(Gene name)`.
- `F2O`, `F2P`, `F2U` files are **relative glucose concentration** wide tables (3 replicates each). In v3 the O and P value sets were corrected (swapped) and the P group label is `NaP_siSIRT1`. `fig2.Rmd` locates them with `pick("F2O_")` / `pick("F2P_")` / `pick("F2U_")`, so double spaces in file names cannot break knitting.

## Before submission — checklist

- [ ] Replace `<OWNER>` / `<REPO>` in `Data_availability_statement.md` and `init_and_push.sh`; delete the `<DOI>` sentence if you have no Zenodo/OSF DOI.
- [ ] `F1C_MR_beta.csv`: replace `IVW (specify)` in the `method` column with the exact MR method used.
- [x] `F2P_…SIRT1.csv` corrected in v3: the third column is now `NaP_siSIRT1`, and the O/P value sets were swapped to the corrected exports (see `CHANGELOG.md`). Only one `F2O_*` and one `F2P_*` file is deposited.
- [ ] Copy the actual `F1B.ai … F1K.tif` and `F2C.tif … F2T.tif / F2Q.ai` into `fig*/raw_images/` — only the manifests were supplied.
- [ ] If the journal asks for numerical source data for any blot panel (F1K, F2C–F2T), export the densitometry CSV; none was supplied. Do **not** digitise values from the published panels.
- [ ] Significance marks printed on the published panels may differ from p-values recomputed here (small n, different test / covariate adjustment). Keep the source values; adjust the `method =` argument in the Rmd and mention the exact test in the figure legend.
- [ ] Knit both HTML reports, commit them, run `bash init_and_push.sh`, and verify the public link in a private/incognito window.
- [ ] Human-derived data (serum SCFA, MR summary statistics): only deposit non-identifiable aggregate values; describe any controlled-access route in the Data availability statement.
