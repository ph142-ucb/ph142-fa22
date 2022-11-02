test = list(
  name = "p12",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p12a", {
          expect_true(all.equal(p12, -9.239275, 0.001))
          print("Checking: correct test statistic")
        })
      }
    )
  )
)