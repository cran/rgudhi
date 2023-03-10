test_that("Clustering algorithm classes work", {
  expect_true("AffinityPropagation" %in% class(AffinityPropagation$new()))
  expect_true("AgglomerativeClustering" %in% class(AgglomerativeClustering$new()))
  expect_true("Birch" %in% class(Birch$new()))
  expect_true("DBSCAN" %in% class(DBSCAN$new()))
  expect_true("FeatureAgglomeration" %in% class(FeatureAgglomeration$new()))
  expect_true("KMeans" %in% class(KMeans$new()))
  expect_true("BisectingKMeans" %in% class(BisectingKMeans$new()))
  expect_true("MiniBatchKMeans" %in% class(MiniBatchKMeans$new()))
  expect_true("MeanShift" %in% class(MeanShift$new()))
  expect_true("OPTICS" %in% class(OPTICS$new()))
  expect_true("SpectralClustering" %in% class(SpectralClustering$new()))
  expect_true("SpectralBiclustering" %in% class(SpectralBiclustering$new()))
  expect_true("SpectralCoclustering" %in% class(SpectralCoclustering$new()))
})
