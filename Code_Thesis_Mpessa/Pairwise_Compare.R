#library(pdftools)
#library(tidyverse)
library(textreuse)
library(readtext)
#library(readxl)



minhash <- minhash_generator(n=200, seed = 234)
corpus <- TextReuseCorpus(dir = paste0(getwd(),"/mix/experimental_data/test-set_json_equal-and-greater-than-200kb"),#dir = paste0(getwd(),"/dokus"),
                          tokenizer = tokenize_ngrams, n = 5,
                          minhash_func = minhash, progress = FALSE,
                          skip_short = FALSE)


comparisons_jsim <- pairwise_compare(corpus, jaccard_similarity)

