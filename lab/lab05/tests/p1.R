test = list(
  name = "p1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p1a", {
          expect_true(class(p1) == "numeric")
          print("Checking: p1 is a number")
  
        })

        test_that("p1b", {
          expect_true(between(p1, 0, 1))
          print("Checking: p1 is a value between 0 and 1")
  
        })

        test_that("p1c", {
          expect_true(all.equal(p1, .1575, tol = .01))
          print("Checking: p1 is the correct probability")
  
        })
      }
    )
  )
)