test = list(
  name = "p1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p1a", {
          expect_true("ggplot" %in% class(p1))
          print("Checking: p1 is a ggplot")
        })

        test_that("p1b", {
          expect_true(identical(p1$data, hemoglobin))
          print("Checking: Using hemoglobin data")
        })

        test_that("p1c", {
          expect_true(rlang::quo_get_expr(p1$mapping$x) == "ward")
          print("Checking: Ward is on the x-axis")
        })

        test_that("p1d", {
          expect_true(rlang::quo_get_expr(p1$mapping$y) == "hemo_level")
          print("Checking: hemo_level is on the y-axis")
        })

        test_that("p1e", {
          expect_true("GeomBoxplot" %in% class(p1$layers[[1]]$geom))
          print("Checking: Made a boxplot")
        })

        test_that("p1f", {
          expect_true("GeomPoint" %in% class(p1$layers[[2]]$geom))
          print("Checking: Added raw data points")
        })
      }
    )
  )
)