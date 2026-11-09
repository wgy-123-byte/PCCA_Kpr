# script/theme_pub.R — shared plotting style for all panels
theme_pub <- function(base_size = 12) {
  ggplot2::theme_bw(base_size = base_size) +
    ggplot2::theme(
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.x = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = "black"),
      axis.title = ggplot2::element_text(colour = "black"),
      strip.background = ggplot2::element_blank(),
      strip.text = ggplot2::element_text(face = "bold"),
      legend.key = ggplot2::element_blank(),
      plot.title = ggplot2::element_text(face = "bold", hjust = 0)
    )
}

group_cols <- c(Healthy = "#333333", T2D = "#EF5350",
                Ctr = "#7A7A7A", NaP = "#EF5350",
                `db/m` = "#9AA7C7", `db/db` = "#2B4C8C",
                Proteome = "#EF6A5A", Propionylome = "#3AA98A")

pvalue_stars <- function(p) {
  ifelse(is.na(p), "", ifelse(p < 0.001, "***",
         ifelse(p < 0.01, "**", ifelse(p < 0.05, "*", "ns"))))
}
