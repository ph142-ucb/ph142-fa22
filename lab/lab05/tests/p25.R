test = list(
  name = "p25",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p25a", {
          expect_true(between(p25, 0, 1))
          print("Checking: p25 is a value between 0 and 1")
        })

        test_that("p25b", {
          expect_true(all.equal(p25, 0.949412, tol = 0.01))
          print("Checking: p25 is the correct probability")
        })
      }
    )
  )
)