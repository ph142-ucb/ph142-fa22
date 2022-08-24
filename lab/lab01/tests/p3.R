test = list(
  name = "p3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        test_that("p3a", {
          expect_true(is.numeric(p3))
          print("p3a: Checking p3 is a numeric")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.0,
      code = {
        test_that("p3b", {
          expect_true(p3 == 5)
          print("p3b: Checking p3 equals 5")
        })
      }
    )
  )
)