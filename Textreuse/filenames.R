filenames(paths, extension = FALSE)
library(pdftools)
library(csv)
paths <- c("corpus/one.txt", "corpus/two.md", "corpus/three.text")
filenames(paths)
text <- pdf_text("BayesLSH.pdf")
text1 <- pdf_text("Thesisproposal_Elisabeth_Mpessa.pdf")
filenames(paths, extension = TRUE)

