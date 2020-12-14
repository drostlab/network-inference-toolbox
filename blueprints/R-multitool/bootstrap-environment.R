options(renv.settings.snapshot.type = "all")
renv::consent(provided = TRUE)
renv::init(bare = TRUE)

renv::install(c(
  "bioc::GENIE3",
  "cvTools",
  "doParallel",
  "doRNG",
  "diptest",
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
  "Rcpp"
))

renv::snapshot()
