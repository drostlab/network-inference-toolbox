options(renv.settings.snapshot.type = "all")
renv::consent(provided = TRUE)
renv::init(bare = TRUE)

renv::install(c(
  "bioc::GENIE3",
  "cvTools",
  "doParallel",
  "doRNG",
  "diptest",
  "drostlab/edgynode@8337b3b53bd772511af0deed642f9ff888f16bb8",
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
