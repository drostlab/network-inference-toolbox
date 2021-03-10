options(renv.settings.snapshot.type = "all")
renv::consent(provided = TRUE)
renv::init(bare = TRUE)

renv::install(c(
  "bioc::GENIE3",
  "bioc::noisyr",
  "bioc::WGCNA",
  "cvTools",
  "doParallel",
  "doRNG",
  "diptest",
  "drostlab/edgynode@9174f50862e9a12d1a208c583d03f28ea8c7bed5",
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
