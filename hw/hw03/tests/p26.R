test = list(
  name = "p26",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.16666666666666666,
      code = {
        test_that("p26a", {
          expect_true("ggplot" %in% class(p26))
          print("Checking: p26 is a ggplot")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.16666666666666666,
      code = {
        test_that("p26b", {
          expect_true(identical(p26$data, insure_smokers))
          print("Checking: using insure_smokers")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.16666666666666666,
      code = {
        test_that("p26c", {
          expect_true(rlang::quo_get_expr(p26$mapping$x) == "age")
          print("Checking: age is on the x-axis")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.16666666666666666,
      code = {
        test_that("p26d", {
          expect_true(rlang::quo_get_expr(p26$mapping$y) == "charges")
          print("Checking: charges is on the y-axis")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.16666666666666666,
      code = {
        test_that("p26e", {
          expect_true("GeomPoint" %in% class(p26$layers[[1]]$geom))
          print("Checking: made a scatterplot")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.16666666666666666,
      code = {
        test_that("p26f", {
          expect_true("FacetWrap" %in% class(p26$facet))
          print("Checking: used a facet")
        })
      }
    )
  )
)