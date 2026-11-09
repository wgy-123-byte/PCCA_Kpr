# Main Figure 2 — panel-to-source crosswalk (real data)

| Panel | Content | Source file in `fig2/` | Section in `fig2.Rmd` | Status / note |
|---|---|---|---|---|
| A | KEGG pathway interest size | `F2A_pathway_interest_size.csv` | Panel A | 8 pathways + `Related Genes` lists; interest size = number of genes (33/25/30/31/20/18/19/19) |
| B | Kpr sites per protein | `F2B_Kpr_sites_per_protein.csv` | Panel B | 70 site rows, 17 genes; per-gene counts e.g. EHHADH 13, HADHA 10, PCCA 7 |
| C–N | Immunoblots (IP/WCE, CHX, ubiquitin, knockdowns) | `F2C.tif` … `F2N.tif` (`raw_images/`) | Panels C–N, Q–T | **uncropped originals to be placed in `raw_images/`**; no densitometry tables supplied |
| O | Relative glucose concentration, p300 knockdown | `F2O_Relative glucose concentration of  BH cells transfecting with p300.csv` | Panel O | 3 replicates × 3 groups (Ctr_NC / NaP_NC / NaP_sip300); **v3 corrected values** |
| P | Relative glucose concentration, SIRT1 knockdown | `F2P_Relative glucose concentration of BH cells transfecting with SIRT1.csv` | Panel P | 3 × 3 (Ctr_NC / NaP_NC / **NaP_siSIRT1**); **v3 corrected values, column label fixed** |
| Q | PCCA (Bos taurus) domain / lysine map | `F2Q.ai` (`raw_images/`) | Panels C–N, Q–T | editable source |
| R | WT / K→R mutant Kpr blot | `F2R.tif` (`raw_images/`) | Panel R | uncropped original; no densitometry table supplied |
| S–T | Ubiquitination / CHX blots | `F2S.tif`, `F2T.tif` (`raw_images/`) | Panels C–N, Q–T | uncropped originals |
| U | Relative glucose concentration, WT vs K39R | `F2U_Relative glucose concentration of BH cells transfecting with Flag-PCCA WT or K39R mutant plasmid.csv` | Panel U | 3 replicates × 2 groups |

`F2_image_panels_manifest.csv` lists all 16 image-only panels (C–N, Q–T). Only the manifest was supplied; the actual `.tif` / `.ai` files must be copied into `raw_images/`.
