test = list(
  name = "p6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p6a", {
          expect_true(is.vector(p6))
          print("Checking: p6 is a vector")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p6b", {
          expect_true(typeof(p6) == "character")
          print("Checking: p6 is a character vector")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p6c", {
          expect_true('children' %in% p6)
          print("Checking: variables in p6")
        })
      }
    )
  )
)