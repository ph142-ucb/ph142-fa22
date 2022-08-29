test = list(
  name = "q10",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.25,
      code = {
        test_that("p10a", {
          expect_true("ggplot" %in% class(p10))
          print("Checking: p10 is a ggplot")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.25,
      code = {
        test_that("p10b", {
          expect_true(identical(p10$data, CS_data))
          print("Checking: Using CS_data")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.25,
      code = {
        test_that("p10c", {
          expect_true(rlang::quo_get_expr(p10$mapping$x) == "Region")
          print("Checking: Region is on the x-axis")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.25,
      code = {
        test_that("p10d", {
          expect_true("GeomBar" %in% class(p10$layers[[1]]$geom))
          print("Checking: Made a barchart")
        })
      }
    )
  )
)