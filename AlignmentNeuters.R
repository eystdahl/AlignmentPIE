# Matrix of observed frequencies of neuter nouns across core argument functions

NeuterArguments <- matrix(c(5, 8, 1, 21, 56, 46, 129, 116, 109), ncol = 3, byrow = TRUE)
colnames(NeuterArguments) <- c("Vedic Sanskrit", "Homeric Greek", "Old Latin")
rownames(NeuterArguments) <- c("Bivalent Subject", "Monovalent Subject", "Bivalent Object")

#Check Matrix

NeuterArguments

#Chisquared Test

chisq.test(NeuterArguments)

#Install and load vcd package
install.packages("vcd")
library(vcd)

#Get Cramér's V value
assocstats(NeuterArguments)

#Get proportional distribution by column

NeuterArgumentsProportion <- prop.table(NeuterArguments, 2)*100
NeuterArgumentsProportion

#Barplot of proportional distribution by column

barplot(NeuterArgumentsProportion, beside = TRUE, col = c("grey20", "white", "black"), main = "Fig. 2.2 Distribution of neuter nouns in core argument functions", ylab = "Relative frequency", ylim = c(0, 100))

legend("topleft", fill = c("grey20", "white", "black"), c("BS", "MS", "BO")

#Get expected values

chisq.test(NeuterArguments)$expected

# Get relative attractions and repulsions by means of Fisher exact test

NeuterAgentsVedic <- matrix(c(5, 9, 150, 327), ncol = 2, byrow = TRUE)
fisher.test((NeuterAgentsVedic), alternative = "greater")

NeuterAgentsGreek <- matrix(c(8, 6, 172, 305), ncol = 2, byrow = TRUE)
fisher.test((NeuterAgentsGreek), alternative = "greater")

NeuterAgentsLatin <- matrix(c(1, 13, 155, 322), ncol = 2, byrow = TRUE)
fisher.test((NeuterAgentsLatin), alternative = "less")

NeuterSubjectsVedic <- matrix(c(21, 102, 134, 234), ncol = 2, byrow = TRUE)
fisher.test(NeuterSubjectsVedic, alternative = "less")

NeuterSubjectsGreek <- matrix(c(56, 67, 124, 244), ncol = 2, byrow = TRUE)
fisher.test(NeuterSubjectsGreek, alternative = "greater")

NeuterSubjectsLatin <- matrix(c(46, 77, 110, 258), ncol = 2, byrow = TRUE)
fisher.test(NeuterSubjectsLatin, alternative = "greater")

NeuterObjectsVedic <- matrix(c(129, 225, 26, 111), ncol = 2, byrow = TRUE)
fisher.test(NeuterObjectsVedic, alternative = "greater")

NeuterObjectsGreek <- matrix(c(116, 238, 64, 73), ncol = 2, byrow = TRUE)
fisher.test(NeuterObjectsGreek, alternative = "less")

NeuterObjectsLatin <- matrix(c(109, 245, 47, 90), ncol = 2, byrow = TRUE)
fisher.test(NeuterObjectsLatin, alternative = "less")









