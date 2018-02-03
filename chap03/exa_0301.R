### ╤ах║йЩ╬щ
Lst <- scan("drink.data", what = list(sex = "", type = ""))
Ta <- table(Lst)
(sex <- margin.table(Ta, 1))
(drink <- margin.table(Ta, 2))

prop.table(Ta)
prop.table(drink)
margin.table(prop.table(Ta),2)