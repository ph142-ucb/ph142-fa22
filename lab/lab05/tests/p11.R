test = list(
  name = "p11",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p11a", {
          expect_true(class(p11) == "numeric")
          print("Checking: p11 is numeric")
        })

        test_that("p11b", {
          expect_true(between(p11, 0, 1))
          print("Checking: p11 is a value between 0 and 1")
        })

        test_that("p11c", {
          expect_true(all.equal(p11, .6270, tol = 0.01))
          print("Checking: p11 is the correct probability")
        })
      }
    )
  )
)