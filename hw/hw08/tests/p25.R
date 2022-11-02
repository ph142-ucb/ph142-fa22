test = list(
  name = "p25",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p25a", {
          expect_true(p25 == "c")
          print("Checking: Correct answer choice")
        })
      }
    )
  )
)