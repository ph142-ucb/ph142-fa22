test = list(
  name = "p22",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p22a", {
          expect_true(between(p22, 0, 1))
          print("Checking: p22 is a value between 0 and 1")
        })

        test_that("p22b", {
          expect_true(all.equal(p22, 0.01222447, tol = 0.01))
          print("Checking: p22 is the correct probability")
        })
      }
    )
  )
)