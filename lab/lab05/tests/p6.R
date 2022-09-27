test = list(
  name = "p6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p6a", {
          expect_true(class(p6) == "numeric")
          print("Checking: p6 is numeric")
  
        })

        test_that("p6b", {
          expect_true(between(p6, 0, 1))
          print("Checking: p6 is a value between 0 and 1")
  
        })

        test_that("p6c", {
          expect_true(all.equal(p6, 0.015625, tol = .01))
          print("Checking: p6 is the correct probability")
  
        })
      }
    )
  )
)