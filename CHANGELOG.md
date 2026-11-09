# Changelog

## v3 — 2026-11-10 (corrected Figure 2 panels O / P)

The two quantification exports for panels O and P were replaced with the corrected files supplied by the author. **The two value sets are swapped relative to v2**, and the P column label was fixed.

| Panel | Deposited file (`fig2/`) | Groups | r1 | r2 | r3 |
|---|---|---|---|---|---|
| O (p300) | `F2O_Relative glucose concentration of  BH cells transfecting with p300.csv` | Ctr_NC / NaP_NC / NaP_sip300 | 0.955329 / 1.256859 / 1.089342 | 1.022336 / 1.290363 / 1.089342 | 1.022336 / 1.256859 / 1.055839 |
| P (SIRT1) | `F2P_Relative glucose concentration of BH cells transfecting with SIRT1.csv` | Ctr_NC / NaP_NC / **NaP_siSIRT1** | 0.966118 / 1.304936 / 1.609872 | 1 / 1.237173 / 1.609872 | 1.033882 / 1.237173 / 1.677636 |

Other changes:

- `fig2.Rmd` locates the O/P/U exports with `pick("F2O_")`, `pick("F2P_")`, `pick("F2U_")` instead of hard-coding file names. The supplied file names contain double spaces in different positions, which made exact-name lookup fragile.
- Removed the v2 warning about `NaP_sip300` appearing in the SIRT1 file; the corrected P table uses `NaP_siSIRT1`.
- Only one `F2O_*` and one `F2P_*` file is deposited in `fig2/`; the superseded copies are not included.
- Figure 1 tables, `F2A`, `F2B`, `F2U`, both image manifests, the Data availability statement and the publishing script are unchanged from v2.

**Please confirm before submission:** the correction swaps the two value sets. If the intent was only to fix the P column label while keeping the original value assignment, re-export the two tables and re-run the build.

## v2 — 2026-11-10

Repository rebuilt entirely from the author's real exported tables; `fig1.Rmd` / `fig2.Rmd` rewritten against the actual column layouts (wide matrices, two-row headers, Excel sheets).
