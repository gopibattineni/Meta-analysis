# Load the meta package
install.packages("meta")
library(meta)

# Assuming you have your prevalence data stored in 'Result', where 'AD_stages' is the number of events (e.g., individuals with a disease) and 'N' is the total sample size

# Perform the meta-analysis
prev_meta <- metaprop(data = Result6, 
                      n = N, 
                      event = AD, 
                      studlab = Auth_Year,
                      sm = "PLOGIT",  # Using the logit transformation for proportions
                      method = "INVERSE",# Fixed-effect model
                      fixed = FALSE, 
                      random = TRUE,)
summary(prev_meta)


# Print summary of meta-analysis


# # Define custom labels
# custom_labels <- c("Weight" = "Weight%")

# forest(MD_LYSHOLM,fixed = FALSE, random = TRUE, overall= FALSE, col.random = "blue", 
#        prediction = TRUE, pooled.events = TRUE, xlab = "Mean Difference in Lysholm Scores",fs.xlab = 14,
#        weight.study = "random", col.study = "black", col.square = "red",col.square.lines = "black", 
#        col.diamond = "black",hetstat = TRUE, overall.hetstat = FALSE, hetlab = "Heterogeneity",
#        resid.hetstat = FALSE, print.I2 = TRUE, print.tau = TRUE)

# Create forest plot with custom labels


forest(prev_meta, 
       pscale = 100,
       col.random = "blue", 
       xlab = "Prevalence of AD subjects", 
       weight.study = "random",
       col.study = "black",
       col.square = "red",
       col.square.lines = "black",
       col.diamond = "black",
       resid.hetstat = TRUE,  # Suppressing the display of heterogeneity statistic
       print.I2 = TRUE,        # Printing the I^2 statistic
       print.tau = TRUE,  # Printing the tau^2 statistic
       leftlabs = c("Author_Year", "AD Subjects", "Total"),
       rightlabs = c("Prevalence", "95% C.I", "%Weight"))


# drapery(prev_meta,
#         labels = "studlab",
#         type = "pval",
#         legend = TRUE,
#         pos.legend = "bottom",
#         study.results=TRUE,
#         xlab="Events")


