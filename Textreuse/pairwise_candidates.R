dir <- system.file("extdata/legal", package = "textreuse")
library(csv)
corpus <- TextReuseCorpus(dir = paste0(getwd(),"/dokus"))
m1 <- pairwise_compare(corpus, ratio_of_matches, directional = TRUE)
pairwise_candidates(m1, directional = TRUE)
m2 <- pairwise_compare(corpus, jaccard_similarity)
p<-pairwise_candidates(m2)

