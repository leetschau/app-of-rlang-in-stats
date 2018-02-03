X <- scan("city.data")
prop.test(sum(X>99), length(X))
