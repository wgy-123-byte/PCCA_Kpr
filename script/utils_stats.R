# script/utils_stats.R — shared statistics for all panels
compare_two <- function(value, group, method = "wilcox.test", paired = FALSE) {
  d <- data.frame(value = value, group = group)
  d <- d[stats::complete.cases(d), ]
  if (nlevels(factor(d$group)) < 2 || nrow(d) < 3)
    return(list(p = NA_real_, stars = "ns", n = nrow(d)))
  p <- if (method == "t.test") {
    tryCatch(stats::t.test(value ~ group, data = d, paired = paired)$p.value,
             error = function(e) NA_real_)
  } else {
    tryCatch(stats::wilcox.test(value ~ group, data = d, paired = paired)$p.value,
             error = function(e) NA_real_)
  }
  list(p = p, stars = pvalue_stars(p), n = nrow(d))
}

summarise_mean_sd <- function(df, value_col, ...) {
  vc <- rlang::sym(value_col)
  df %>% dplyr::group_by(...) %>%
    dplyr::summarise(mean = mean(!!vc, na.rm = TRUE),
                     sd   = stats::sd(!!vc, na.rm = TRUE),
                     n    = sum(!is.na(!!vc)), .groups = "drop")
}

# mean +/- SD layer for ggplot2::stat_summary (no external dependency)
mean_sd_fun <- function(x) {
  m <- mean(x, na.rm = TRUE); s <- stats::sd(x, na.rm = TRUE)
  data.frame(y = m, ymin = m - s, ymax = m + s)
}
