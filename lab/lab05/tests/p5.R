test = list(
  name = "p5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        test_that("p5a", {
          expect_true(class(p5) == "numeric")
          print("Checking: p5 is numeric")
  
        })

        test_that("p5b", {
          expect_true(between(p5, 0, 1))
          print("Checking: p5 is a value between 0 and 1")
  
        })

        test_that("p5c", {
          expect_true(all.equal(p5, .25, tol = .01))
          print("Checking: p5 is the correct probability")
  
        })
      }
    )
  )
)