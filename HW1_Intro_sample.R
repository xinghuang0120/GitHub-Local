# ---------- HW1: Intro -----------

height <- c(59,60,61,58,67,72,70)   # create a vector "height" containing numbers
weight <- c(150,140,180,220,160,140,130)  # create a vector "weight" containing numbers
a <- 150  # define a variable a (a = 150)

#-------------------------------
# Step 1: Calculating means
 # compute, using R, the average(mean) height
 mean(height)
 
 # compute, using R, the average(mean) weight 
 mean(weight) 
 
length(height) # calculate the length of the vector ‘height’ (the number of elements inside the vecotr)
length(weight) # calculate the length of the vector ‘weight’ (the number of elements inside the vecotr)
sum(height) # calculate the sum of the heights
sum(height)/length(height) # compute the average height by dividing the sum by the length of the vector
sum(weight)/length(weight) # compute the average weight by dividing the sum by the length of the vector

#-------------------------------
# Step 2: Using max/min functions
maxH <- max(height) # compute the max height, store the result in ‘maxH’
minW <- min(weight) # compute the min weight, store the results in ‘minW’

# Step 3: Vector Math
NewWeight <- weight+5 # create a new vector, which is the weight + 5 (every person gained 5 pounds)
NewWeight/height  # compute the pounds/inch for each person, using the new weight just created

# Step 4: Using Conditional if statements
if (maxH > 60) "yes" else "no"  # test if max height is greater than 60 (output “yes” or “no”)
if (minW > a) "yes" else "no"  # test if min weight is greater than the variable ‘a’ (output “yes” or “no”)
