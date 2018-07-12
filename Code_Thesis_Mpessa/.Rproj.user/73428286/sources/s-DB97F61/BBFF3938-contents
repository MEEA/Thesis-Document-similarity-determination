dir <- system.file("extdata/legal", package = "textreuse")
corpus <- TextReuseCorpus(dir =paste0(getwd(),"/dokus") )
names(corpus) <- filenames(names(corpus))
# A non-directional comparison

Jaccard <- pairwise_compare(corpus, jaccard_similarity)
# A directional comparison
ratio <- pairwise_compare(corpus, ratio_of_matches, directional = TRUE)

