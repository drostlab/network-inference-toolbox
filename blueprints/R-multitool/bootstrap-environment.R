options(renv.settings.snapshot.type = "all")
renv::consent(provided = TRUE)
renv::init(bare = TRUE)

renv::install(c(
  "bioc::GENIE3",
  "cvTools",
  "doParallel",
  "doRNG",
  "diptest",
  "drostlab/edgynode@5629a94cf13c99566beead274ec132cfb5eaa379",
  "entropy",
  "foreach",
  "glmnet",
  "igraph",
  "infotheo",
  "kSamples",
  "LEAP",
  "poweRlaw",
  "ppcor",
  "pracma",
  "randomForest",
  "Rcpp",
  "svglite",
  "XML@3.99-0.3"
))

renv::snapshot()
