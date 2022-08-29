test = list(
  name = "q5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        test_that("p5a", {
          expect_true(all.equal(GDP_summary$mean_GDP, 11790.67, tol = 0.01))
          print("Checking: GDP_summary has a column called `mean_GDP` with the correct value")
        })
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.5,
      code = {
        test_that("p5b", {
          expect_true(all.equal(GDP_summary$median_GDP, 3351.305, tol = 0.01))
          print("Checking: GDP_summary has a column called `median_GDP` with the correct value")
        })
      }
    )
  )
)