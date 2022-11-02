test = list(
  name = "p21",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p21a", {
          expect_true(all.equal(p21, 2.877213, 0.001))
          print("Checking: Correct test statistic")
        })
      }
    )
  )
)