install.packages("textreuse")


file <- system.file("extdata/legal/ny1850-match.txt", package = "textreuse")
doc <- TextReuseTextDocument(file = file, meta = list(),hash_func = hash_string,minhash_func = NULL, keep_text = TRUE, skip_short = TRUE)
print(doc)
meta(doc)
head(tokens(doc))
head(hashes(doc))
## Not run:
content(doc)

