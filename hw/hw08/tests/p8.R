test = list(
  name = "p8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p8a", {
          expect_true("ggplot" %in% class(p8))
          print("Checking: p8 is a ggplot")
        })

        test_that("p8b", {
          expect_true(identical(p8$data, breastfeed_CIs))
          print("Checking: Used the correct data")
        })

        test_that("p8c", {
          expect_true(rlang::quo_get_expr(p8$mapping$x) == "method")
          print("Checking: Method is on the x-axis")
        })

        test_that("p8d", {
          expect_true(rlang::quo_get_expr(p8$mapping$y) == "estimate")
          print("Checking: Estimate is plotted as a point")
        })

        test_that("p8e", {
          expect_true('GeomSegment' %in% sapply(p8$layers, function(x) class(x$geom)[1]))
          print("Checking: Made line segments of confidence intervals")
        })
      }
    )
  )
)