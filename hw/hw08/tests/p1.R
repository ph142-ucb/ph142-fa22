test = list(
  name = "p1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p1a", {
          expect_true(all.equal(p1, 6147, tol = 0.01))
          print("Checking: Sample size is correct")
        })
      }
    )
  )
)