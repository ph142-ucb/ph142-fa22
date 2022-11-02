test = list(
  name = "p6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p6a", {
          expect_true(all.equal(p6[1], 0.1291619, 0.001))
          print("Checking: Correct lower bound")
        })

        test_that("p6b", {
          expect_true(all.equal(p6[2], 0.1473842, 0.001))
          print("Checking: Correct upper bound")
        })
      }
    )
  )
)