test = list(
  name = "p7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p7a", {
          expect_true(class(p7) == "numeric")
          print("Checking: p7 is numeric")
        })

        test_that("p7b", {
          expect_true(between(p7, 0, 1))
          print("Checking: p7b is a value between 0 and 1")
        })

        test_that("p7c", {
          expect_true(all.equal(p7, 0.140625, tol = 0.01))
          print("Checking: p7 is the correct probability")
        })
      }
    )
  )
)