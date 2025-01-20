
test_that("cohesion works when the points are not in 2D space", {
  cluster3D <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), ncol=3, byrow=TRUE)
  cohesion3D <- cohesion(cluster3D)
  expect_equal(cohesion3D, 30)
})
