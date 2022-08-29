test = list(
  name = "q12",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p12a", {
          expect_true("ggplot" %in% class(p12))
          print("Checking: p12 is a ggplot")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p12b", {
          expect_true(rlang::quo_get_expr(p12$mapping$y) == "CS_rate_100")
          print("Checking: CS_rate_100 is on the x-axis")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p12c", {
          expect_true("GeomBoxplot" %in% class(p12$layers[[1]]$geom))
          print("Checking: Made a boxplot")
        }) 
      }
    )
  )
)