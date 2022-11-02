test = list(
  name = "p2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p2a", {
          expect_true(all.equal(p2, 2054, tol = 0.01))
          print("Checking: Sample size is correct")
        })
      }
    )
  )
)