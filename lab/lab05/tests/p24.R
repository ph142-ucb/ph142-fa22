test = list(
  name = "p24",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p24a", {
          expect_true(between(p24, 0, 1))
          print("Checking: p24 is a value between 0 and 1")
        })

        test_that("p24b", {
          expect_true(all.equal(p24, 0.03836357, tol = 0.01))
          print("Checking: p24 is the correct probability")
        })
      }
    )
  )
)