test = list(
  name = "p3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p3a", {
          expect_true(is.vector(p3))
          print("Checking: p3 is a vector")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p3b", {
          expect_true(typeof(p3) == "character")
          print("Checking: p3 is a character vector")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p3c", {
          expect_true('sex' %in% p3 && 'smoker' %in% p3 && 'region' %in% p3)
          print("Checking: variables in p3")
        })
      }
    )
  )
)