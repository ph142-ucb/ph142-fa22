test = list(
  name = "p24",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p24a", {
          expect_true(p24 == "b")
          print("Checking: Correct answer choice")
        })
      }
    )
  )
)