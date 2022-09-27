test = list(
  name = "p14",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p14a", {
          expect_true(class(p14) == "numeric")
          print("Checking: p14 is a numeric")
        })

        test_that("p14b", {
          expect_true(between(p14, 0, 1))
          print("Checking: p14 is a value between 0 and 1")
        })

        test_that("p14c", {
          expect_true(all.equal(p14, .994, tol = 0.01))
          print("Checking: p14 is the correct probability")
        })
      }
    )
  )
)