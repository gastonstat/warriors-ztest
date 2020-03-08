
# computes a z-statistic from two sample averages
# inputs: two vectors of equal length
# outputs: z-statistic
z_statistic <- function(sample1, sample2) {
  # Std Error of the difference
  se_sample1 <- sd(sample1) / sqrt(length(sample1))
  se_sample2 <- sd(sample2) / sqrt(length(sample2))
  se_diff <- sqrt(se_sample1^2 + se_sample2^2)
  # z-statistic
  z_stat <- (mean(sample1) - mean(sample2)) / se_diff
  return(z_stat)
}


# two-sample z_test
# inputs: two vectors of equal length
# outputs: list with z-statistic and p-value
two_sample_ztest <- function(sample1, sample2) {
  if (length(sample1) != length(sample2)) {
    stop("\nInput vectors have different lengths")
  }
  z_stat <- z_statistic(sample1, sample2)
  pval <- pnorm(z_stat)
  list(statistic = z_stat, pvalue = pval)
}
