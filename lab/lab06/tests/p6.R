test = list(
  name = "p6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p6a", {
          expect_true("ggplot" %in% class(p6))
          print("Checking: p6 is a ggplot")
  
        })

        test_that("p6b", {
          expect_true(identical(p6$data, anorexia_diff))
          print("Checking: Using anorexia_diff data")
  
        })

        test_that("p6c", {
          expect_true(rlang::quo_get_expr(p6$mapping$x) == "diff")
          print("Checking: `diff` variable is on the x-axis")
  
        })

        test_that("p6d", {
          expect_true("GeomBar" %in% class(p6$layers[[1]]$geom))
          print("Checking: Made a histogram")
  
        })

        test_that("p6e", {
          expect_true(length(p6$layers[[1]]$stat_params$binwidth) != 0)
          print("Checking: Binwidth chosen")
        })
      }
    )
  )
)