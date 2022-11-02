test = list(
  name = "p5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p5a", {
          expect_true(all.equal(p5[1], 0.1291020, 0.001))
          print("Checking: Correct lower bound")
        })

        test_that("p5b", {
          expect_true(all.equal(p5[2], 0.1473222, 0.001))
          print("Checking: Correct upper bound")
        })
      }
    )
  )
)