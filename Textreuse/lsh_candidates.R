lsh_candidates(buckets)

dir <- system.file("extdata/legal", package = "textreuse")
minhash <- minhash_generator(n = 200, seed = 234)
corpus <- TextReuseCorpus(dir = paste0(getwd(),"/dokus"),
                          tokenizer = tokenize_ngrams, n = 5,
                          minhash_func = minhash, progress = FALSE)
buckets <- lsh(corpus, bands = 50)
candidates <- lsh_candidates(buckets)
com <-lsh_compare(candidates, corpus, jaccard_similarity, progress = FALSE)

