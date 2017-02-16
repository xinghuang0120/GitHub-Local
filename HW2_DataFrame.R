# ---------- HW2: Manipulating Data frames ----------

# ---------------------------------------------------
# Task 1
 # copy original dataframe into a new one: my_mtcars
 my_mtcars <- mtcars 
 # calculate engine displacement per cylinder and save it as a new variable 'UnitEngine' in the dataframe
 myCars$UnitEngine <- myCars$disp/myCars$cyl
 # summarize the new variable 'UnitEngine'
 summary(myCars$UnitEngine)

# ---------------------------------------------------
# Task 2
 # create a numeric vector 'Pets'
 Pets <- c(1,1,1,0,0)
 # create a numeric vector 'Order'
 Order <- c(3,1,2,3,3)
 # create a numeric vector 'Siblings'
 Siblings <- c(0,3,5,0,0)
 # create a numeric vector 'IDs'
 IDs <- c(1,2,3,4,5)
 # comebine those four numeric vectors together into a dataframe called 'myFriends'
 myFriends <- data.frame(IDs,Pets,Order,Siblings)
 # report the structure of the dataframe
 str(myFriends)
 # summarize the dataframe
 summary(myFriends)
 # list all of the values for 'IDs' variable in the dataframe
 myFriends$IDs
 # list all of the values for 'Pets' variable in the dataframe
 myFriends$Pets
 # list all of the values for 'Order' variable in the dataframe
 myFriends$Order
 # list all of the values for 'Siblings' variable in the dataframe
 myFriends$Siblings
