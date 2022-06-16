#Create matrix of diachronic data from Ancient Greek

GreekAlignmentDiachronic <- matrix(c(168, 25, 38, 50, 34, 62, 7, 3, 0, 0), ncol = 5, byrow = TRUE)
colnames(GreekAlignmentDiachronic) <- c("Homer", "Hesiod", "Herodotus", "Thucydides", "Polybius")
rownames(GreekAlignmentDiachronic) <- c("Singular agreement", "Plural agreement")

#Check
GreekAlignmentDiachronic

#Chisquared test
chisq.test(GreekAlignmentDiachronic)
