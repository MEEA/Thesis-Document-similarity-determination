library(textreuse)
library(rjson)
minhash <- minhash_generator(n = 240, seed = 273)

corpus <- TextReuseCorpus(dir = paste0(getwd(),"/mix/experimental_data/test-set_json_equal-and-greater-than-200kb"),
                          tokenizer = tokenize_ngrams, n = 1,
                          minhash_func = minhash, progress = FALSE,
                          skip_short = FALSE)

 
threshold <- lsh_threshold(h = 240, b = 80)
buckets <- lsh(corpus, bands = 80, progress = FALSE)
candidates <- lsh_candidates(buckets)

compare <- lsh_compare(candidates, corpus, jaccard_similarity, progress = FALSE)


