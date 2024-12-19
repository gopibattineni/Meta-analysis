# Meta-analysis
Machine Learning driven by MRI for the classification of Alzheimer's disease progression: systematic review and meta-analysis

# Methods
The statistical tests Egger's regression and Begg's rank correlation, were used to address the potential bias of publications. To assess the strength of our findings against
potential biases or variations in study characteristics, sensitivity analyses were performed. Lower methodological quality or different study designs were excluded. To identify the effect
size measures, and quantify the strength or magnitude of the relationship between variables or the magnitude of differences between AD groups, we applied the "PLOGIT" function to the logit
transformation of the proportion. The logit transformation is commonly used when dealing with proportions or probabilities, especially when they are bounded between 0 and 1. An inverse
variance method has been applied that specifies the method for pooling effect sizes. There were two types of models considered in the meta-analysis: fixed effects and random effects. 
Using the fixed effects model when we observed a low level of heterogeneity, the test is not statistically significant. The random effects model (REM) was considered for the heterogeneity test with statistical
significance. By calculating T2, the amount of heterogeneity between the true effect sizes of different studies was quantified. An estimation method using a Restricted Maximum-Likelihood
Estimator (REML) that maximizes the likelihood function while accounting for other parameters of the model was use. I2 and Cochran's Q statistic tests were conducted to assess the heterogeneity among the 
effect sizes of individual studies. The measures of heterogeneity (T2 and I2) indicate the variability in AD prevalence estimates across the studies. The prevalence of AD patients across different subgroups 
within the overall population was also investigated. Subgroup analysis enables the identification of factors that can influence prevalence estimates and provide insight into the sources of heterogeneity. 

A subgroupspecific meta-analysis model was used to calculate the pooled prevalence estimates for each subgroup, followed by a comparison of the prevalence estimates across subgroups to assess
whether there were any significant differences. Data were sub-grouped into four categoriesbased AD classifications namely two-group classification, three-group classification, four-group
classification, and six-group classification. Two groups or binary classifications of AD are involved, with only two groups: healthy individuals (ND) or demented (AD). The three-group
classification includes CN, MCI, and AD. The four-group classification comprises non-demented, mildly demented, moderately demented, and AD. Meanwhile, the six-group classification
involves CN, SMC, EMCI, MCI, LMCI, and AD. Each subgroup data was recorded separately into an MS Excel sheet which was further supplied as input to R software (V-4.3.3). For prevalence
and summary meta-analysis, we employed the `meta prop ` functions available in the `meta` package. 
