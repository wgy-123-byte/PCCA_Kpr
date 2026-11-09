# Data availability statement

> Paste the English block into the manuscript's **Data availability** section. Replace the placeholders first.

## English (ready to paste)

**Data availability.** The source data underlying Main Figures 1 and 2, together with the reproducible code used to generate every panel, are publicly available in the `<OWNER>/<REPO>` repository at **https://github.com/<OWNER>/<REPO>** (Gitee mirror: **https://gitee.com/<OWNER>/<REPO>**). The original exported tables — CSV and Excel workbooks containing the numerical values for each quantitative panel — are deposited in `fig1/` and `fig2/`, one folder per main figure. `fig1.Rmd` and `fig2.Rmd` contain the statistical analysis and plotting code for each individual panel (A–O and A–U, respectively), and the knitted reports `fig1.html` / `fig2.html` are included for readability. Uncropped immunoblot and histology images and the editable sources of schematic panels are deposited in `fig1/raw_images/` and `fig2/raw_images/` with a panel-to-file manifest (`F1_image_panels_manifest.csv`, `F2_image_panels_manifest.csv`); shared analysis functions are in `script/`. A permanently archived version of this release is available at `<DOI>` [optional — delete this sentence if no DOI]. All other data supporting the findings of this study are available from the corresponding author upon reasonable request.

**Code availability.** Analysis and plotting were performed in R (>= 4.1) with the packages listed in the repository README. The exact scripts are the `figX.Rmd` files and the helpers in `script/`; no custom proprietary software was used.

## Gitee-only variant

**Data availability.** The source data underlying Main Figures 1 and 2 and the reproducible R Markdown code for every panel are publicly available at **https://gitee.com/<OWNER>/<REPO>** (`fig1/`, `fig2/`, `script/`; see the repository README for the panel-to-file manifest and the original exported tables). Uncropped blot and histology images are included in `fig*/raw_images/`. [Add archival DOI sentence if applicable.] All other data are available from the corresponding author upon reasonable request.

## 中文说明（不必写进稿件）

- 链接必须**无需登录**即可访问；`<OWNER>`、`<REPO>` 换成真实值，投稿前用无痕窗口验证。
- GitHub 与 Gitee 二选一或主链接+镜像，不要写两个互相矛盾的"唯一"地址。
- 若期刊要求永久标识，在 GitHub Release `v1.0` 后同步 Zenodo，把 `<DOI>` 写进声明。
- 若涉及人类受试者/受控访问数据，只公开可复现图形所必需的非识别性汇总值，并在声明里补受控访问路径。

## Replacement checklist

- [ ] `<OWNER>` / `<REPO>` → 真实账号与仓库名（声明与 `init_and_push.sh` 都要改）
- [ ] GitHub 或 Gitee 链接 → 只保留实际推送的那个；删掉未用的分支
- [ ] `<DOI>` → 真实 Zenodo/OSF DOI，或删掉该句
- [ ] 仓库为 **Public**；`fig1/fig1.Rmd`、`fig2/fig2.Rmd` 在网页上可见（ZIP 必须解压后上传）
- [ ] `fig*/raw_images/` 已放入未裁剪原图
- [ ] `fig1.html` / `fig2.html` 已 knit 并提交
