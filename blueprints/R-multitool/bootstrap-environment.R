options(renv.settings.snapshot.type = "all")
renv::consent(provided = TRUE)
renv::init(bare = TRUE)

renv::install(c(
  "bioc::GENIE3",
  "cvTools",
  "doParallel",
  "doRNG",
  "diptest",
  "drostlab/edgynode@3c1516318f6259c6ea623c4c15efc44afa68954e",
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
