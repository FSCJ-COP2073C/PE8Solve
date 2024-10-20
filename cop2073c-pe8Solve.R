# cop2073c-pe8Solve.R
# D. Singletary
# 10/8/24
# Kitten Hypothesis

# Null Hypothesis (H0): mu = 3.5
# Alternative Hypothesis (HA): mu != 3.5 
# (!= means this is a two-sided test)

# Calculate the test statistic:
# T = Xbar – (sample mean)
#     --------------------------
#     std dev / sqrt(n)

# sample size
n <- 73

# average weight (expected population mean)
avgweight = 3.5

# mean weight (calculated sample mean)
meanweight <- 3.97

# standard deviation
stddev <- 2.21

tstat <- (meanweight - avgweight)/(stddev/sqrt(n))
cat('test statistic =', tstat, '\n')

# use the pt function to determine the p-value.

# since this is a two-tailed test we double the
# area under the upper tail.

# df is degrees of freedom (sample size minus 1)

pval <- 2 * (1 - pt(tstat,df=(n-1)))

cat('p-value =', pval, '\n')

# significance (alpha) = 0.05
signif = 0.05
cat('significance =', signif, '\n')

if (pval > signif) {
      cat('insufficient evidence to reject the null hypothesis\n')
} else {
      cat('sufficient evidence to reject the null hypothesis\n')
}

# the p-value is around 0.073, which is greater than
# the alpha of 0.05, therefore there is insufficient
# evidence to reject the null hypothesis, i.e. there is
# no evidence that the true mean cat weight is different
# from 3.5.