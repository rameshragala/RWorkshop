library("tm")
reviews <- read.csv(file.choose(), nrows = 3, stringsAsFactors = FALSE)
head(reviews)
data10 <- reviews$text
data10
corpus10 <- Corpus(VectorSource(data10), list(reader = readPlain))

corpus10[[1]]

corpus10 <- tm_map(corpus10, removePunctuation)
corpus10[[1]]

corpus10 <- tm_map(corpus10, removeNumbers)
corpus10[[1]]

corpus10 <- tm_map(corpus10, stripWhitespace)
corpus10[[1]]

corpus10 <- tm_map(corpus10, content_transformer(tolower))
corpus10[[1]]

stopwords(kind = "en")
head(stopwords(kind = "en"))

corpus10 <- tm_map(corpus10, removeWords, stopwords("en"))
corpus10 <- tm_map(corpus10, stripWhitespace)
corpus10[[1]]

corpus10 <- tm_map(corpus10, stemDocument)
head(corpus10[[1]])
?stemDocument

tokens <- tm_map(corpus10, scan_tokenizer)[[1]]
head(tokens)
ntokens <- 20
tokens
tokens[1:ntokens]
tf <- table(tokens)
#dimnames(tf) <- unname(dimnames(tf))
#tf[1:ntokens]

dtm <- DocumentTermMatrix(corpus10)
dtm
colnames(dtm)[1:ntokens]

