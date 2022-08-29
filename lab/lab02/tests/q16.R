test = list(
  name = "q16",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.14285714285714285,
      code = {
        test_that("p16a", {
          expect_true("ggplot" %in% class(p16))
          print("Checking: p16 is a ggplot")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.14285714285714285,
      code = {
        test_that("p16b", {
          expect_true(identical(p16$data, CS_data))
          print("Checking: Using CS_data")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.14285714285714285,
      code = {
        test_that("p16c", {
          expect_true("GeomBar" %in% class(p16$layers[[1]]$geom))
          print("Checking: Made a histogram or a barchart")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.14285714285714285,
      code = {
        test_that("p16d", {
          expect_true(length(p16$layers[[1]]$aes_params)!=0)
          print("Checking: Fill color set")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.14285714285714285,
      code = {
        test_that("p16e", {
          expect_true(length(p16$labels$y) != 0)
          print("Checking: y-axis is labeled")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.14285714285714285,
      code = {
        test_that("p16f", {
          expect_true(length(p16$labels$x) != 0)
          print("Checking: x-axis is labeled")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.14285714285714285,
      code = {
        test_that("p16g", {
          expect_true(length(p16$labels$title) != 0)
          print("Checking: Title added")
        })
      }
    )
  )
)