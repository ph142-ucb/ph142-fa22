test = list(
  name = "p4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("sampleSize_answer", {
          expect_true(sampleSize_answer == "c")
          print("Checking: sampleSize is 500")
        })
      }
    )
  )
)