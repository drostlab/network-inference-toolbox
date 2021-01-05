options(renv.settings.snapshot.type = "all")
renv::consent(provided = TRUE)
renv::init(bare = TRUE)

renv::install(c(
  "bioc::edgeR",
  "bioc::GENIE3",
  "cvTools",
  "doParallel",
  "doRNG",
  "diptest",
  "drostlab/edgynode@f42525a0245dee2b41e5191fcf3b01d8343cbf63",
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
  "XML@3.99-0.3"
))

renv::snapshot()
