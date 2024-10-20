#--------------------------------------------------------------------
#-----------------------------LAB PROGRAM-----------------------------------
# 5 a>---------------------------

df1 = data.frame(StudentID = c(101:106),
                 English = c(35,65,80,40,79,91),
                 Maths=c(40,50,70,35,56,89), 
                 Science = c(99,98,89,79,90,79))
print(df1)

df2 = data.frame(StudentID = c(101:106),
                 State =
                   c("Maharashtra", "Karnataka", "Texas", "California" ," Michigan", "Nevada"))
print(df2)
df = merge(x = df1, y = df2, by = "StudentID")
print(df)

#--------------------
#---5b>-----
# df3 = data.frame(Social = c(66,85,99,89,79,97))
#df <- cbind(df1, df3)
df <-cbind(df, Social = c(89,96,95,95,99,97))
print(df)
# create second dataframe
newdf=data.frame(
  StudentID = c(107,108),
  English = c(70,89),
  Maths = c(68,78),
  Science = c(99,98),
  State = c("Karnataka", "Maharashtra"),
  Social = c(85,99)
)
finaldf<-rbind(df, newdf)
print(finaldf)
print(finaldf)
info <- subset(finaldf, Maths > 50 & State == "Karnataka")
print(info)  
idstate<-finaldf[,c("StudentID", "State")]
print(idstate)

#-------------------------
#----5 <c>-----
# Organise Data With Respect to Student ID and State
moltendf<-melt(finaldf, id=c("StudentID", "State"), variable = "Subjects")
print(moltendf)
castdf<-cast(moltendf, StudentId+State~Subjects)
print(castdf)



#---------------------
#Joining Column  and Rows In Data Frames
city<-c("New York", "Seattle", "Vancouver", "Toronto") # create vectors
state<-c("NYC", "WA", "ES", "TO")
zipcode<-C(43200,99201,93392,22991)

addresses<-cbind(city, state, zipcode)

cat("# # # #The COmbined Data Frame\n")
print(addresses)

new.add<- data.frame(
  city = c("Lowry", "Charlotte"),
  state = c("CO", "FL"),
  zipcode = c("8009549", "4375834"),
  stringsAsFactors = FALSE
)

cat("# # # # The Second data frame\n")
print(new.add)

all.add <- rbind(add, new.add)    #combine
cat("# # # The Combined Data frame\n")

print(all.add)





#--------- Health Analysis (Using Pima and Ships) -----
install.packages("MASS")
library(MASS)
print(Pima.te)
print(Pima.tr)
merged.Pima <- merge(
  x = Pima.te,
  y = Pima.tr,
  by.x = c("bp", "bmi"),
  by.y = c("bp", "bmi")
)
print(merged.Pima)
nrow(merged.Pima)
print(ships)
install.packages("reshape")
install.packages("reshape2")
library(reshape)
library(reshape2)
install.packages("CAST")

#----Melting Casting----
molten.ships<-melt(ship, id = c("type", "year"))
print(molten.ships)
recasted.ships<-cast(molten,ships,type+year-variable,sum)
print(recasted.ships)

#------------- Input Excel CSV File------
data<-read.csv ("C:/Users/STUDENT/Documents/input.csv")
print(data)
print(is.data.frame(data))
print(max(data$salary))
print(subset(data, salary == max(salary))) # Print The Maximum Salary

print(subset(data, dept== "IT")) # Get the IT Dept

print(subset(data, salary > 600 & dept == "IT")) # Salary > 600 and IT DEPT

retval<-subset(data, as.Date(start_date)>as.Date("2014-01-01")) # Date Format
write.csv(retval,"output.csv")
new<-read.csv("output.csv")
print(new)













