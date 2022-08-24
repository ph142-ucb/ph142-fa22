test = list(
  name = "p3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p3a", {
          expect_true(is.data.frame(sleep_small_colon))
          print("p3a: Checking sleep_small_colon is a dataframe")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p3b", {
          expect_true(ncol(sleep_small_colon) == 3)
          print("p3b: Checking sleep_small_colon has 3 columns")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.3333333333333333,
      code = {
        test_that("p3c", {
          expect_true(all(names(sleep_small_colon) == c("awake", "brainwt", "bodywt")))
        print("p3c: Checking sleep_small_colon has columns 'awake', 'brainwt', and 'bodywt'")
        })
      }
    )
  )
)