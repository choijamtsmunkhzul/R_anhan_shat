# R программын үндэс 1

# Basic calculations Энгийн тооцоолол

getwd()

# [1] "C:/Users/billy/Desktop"

4 + 3

#[1] 7

4 - 3

# [1] 1


4 * 3

#[1] 12


4 / 3

#[1] 1.333333


(3+4)/2

#[1] 3.5


sqrt(9)   # sqrt yazguur

#[1] 3



print(sqrt(3.5), digits = 10)

#[1] 1.870828693


round(sqrt(3.5))

#[1] 2


round(sqrt(3.5), digits = 3)

# [1] 1.871


#--------help function-----

help(sqrt)

?round()

#------------------------------------------------------------










#---------lesson2-----------------------------------------

# Variable_types / Хувьсагч болон түүний төрлүүд

#1.Integer - buhel too

x <- 8L

x

typeof(x)

#[1] "integer"


#2. double - butarhai too


y <- 5.3
typeof(y)
#[1] "double"



#Complex -

z <- 2 + 5i

z

typeof(z)
#[1] "complex"



#character - text

a <- "sainuu"


a

typeof(a)
#[1] "character"




#logical - logik utga

q1 <- TRUE   #unen

typeof(q1)


#[1] "logical"



q2 <- FALSE #buruu

typeof(q2)

#[1] "logical"


#------------------------------------------------------------









#--------------lesson 3-----------------------------------------------

#   How to use variable? / Хувьсагчийг хэрхэн ашиглах вэ?


A <- 10

Z <- 5


C <- A + Z

C

#[1] 15



x <- 2.5


y <- 4


result <- x / y

result

#[1] 0.625


answer <- sqrt(y)
answer 
#[1] 2




#Character text

mendleh <- "Saina uu"
ner <- "Bold"

message <- paste(mendleh, ner)

message

#[1] "Saina uu Bold"

#-----------------------------------------------------------
#-----------------------------------------------------------







#------------lesson 4-------------------------


# Logical Variable / Нөхцөл шалгахдаа хувьсагчийг хэрхэн ашиглах вэ?

# Logical:
# TRUE   T     Зөв
# FALSE  F     Буруу


1 < 8

#[1] TRUE


10 > 100

#[1] FALSE


4 == 5

#[1] FALSE



# == equal
# != not equal
# <
# >
# <=
# >=
# ! NOT
# & AND
# isTRUE(x)


result <- 4 < 5

result

#[1] TRUE

typeof(result)

#[1] "logical"



result2 <- !(5 > 1)

result2
#[1] FALSE


result & result2

#[1] FALSE


isTRUE(result)

#[1] TRUE


#----------------------------------
#-----------------------------------









#------------------------------------------------------------

# R программын үндэс 1
# Create Vector / Хэрхэн вектор зохиох вэ?

# numerical vector (Тоон вектор)
Myvector <- c(6, 54, 894, 7)

#c combine (Нэгтгэх)

Myvector
#[1]   6  54 894   7

is.numeric(Myvector)
#[1] TRUE

is.integer(Myvector) #1L
#[1] FALSE

is.double(Myvector)
#[1] TRUE


# Integer vector  (Тоон вектор)

V3 <- c(5L, 35L, 24L, 0L)

is.numeric(V3)
#[1] TRUE

is.integer(V3)
#[1] TRUE

is.double(V3)
#[1] FALSE


#----------------------------------------

# character vector (Үгэн вектор)

V3 <- c("a", "negude", "Hello")

V3
#[1] "a"      "negude" "Hello"

is.character(V3)
#[1] TRUE


is.numeric(V3)
#[1] FALSE





#--------------------------------------------------

V3 <- c("a", "negude", "Hello", 7)

V3
#[1] "a"      "negude" "Hello"  "7"

is.character(V3)
#[1] TRUE

is.numeric(V3)
#[1] FALSE


#------------------------------

#Vector 

seq() #sequence Дараалал
rep()  #replication Хувилах


seq(1, 15)
#[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15

1:15

#[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15


seq(1, 15, 2)   # (Хаанаас эхлэх, хаана дуусах, хэдээр) 

#[1]  1  3  5  7  9 11 13 15


a <- seq(1,15,2)
a
#[1]  1  3  5  7  9 11 13 15

#------------

rep()

rep(3, 50)
#[1] 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3
#[29] 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3


rep("a", 5)
#[1] "a" "a" "a" "a" "a"


x <- c(80,20)

y <- rep(x, 10)
y
#[1] 80 20 80 20 80 20 80 20 80 20 80 20 80 20 80 20 80 20 80
#[20] 20

#----------------------------------------------

a <- c(1, 123, 534, 13, 4)
a
#[1]   1 123 534  13   4

b <- seq(201, 250, 11)
b
#[1] 201 212 223 234 245


c <- rep("hi", 2)
c
#[1] "hi" "hi"



#------------------------------
#--------------------------------

w <- c("a", "b", "c", "d", "e")

w
#[1] "a" "b" "c" "d" "e"


w[1]
#[1] "a"

w[2]
#[1] "b"

w[-1]
#[1] "b" "c" "d" "e"

w[-3]
#[1] "a" "b" "d" "e"


v <- w[-3]
v
#[1] "a" "b" "d" "e"


w[1:3]

#[1] "a" "b" "c"

w[c(1,3,5)]
#[1] "a" "c" "e"

#--------------------------------------
#----------------------------------------











#-----R Factor / Факторын талаарх ойлголт -----

#Factor / Фактор гэдэг нь "векторын" object бөгөөд
#дата-өгөгдлийг групп (classification) болгож 
#ангилахад ашиглана.

# Factor / Фактор - статистик боловсруулалт болон
# график байгуулахад ашиглана.


# Factor / Фактор ихэвчлэн текст болон тоон утгыг 
# ангилахад ашиглана.

#--------------------------------------

data <- c("havar", "ovol", "zun", "namar", "zun", "ovol",
          "havar", "namar", "havar", "havar", "zun")

print(data)

data

#-----------

print(is.factor(data))
#[1] FALSE

#-------- Factor ----

factor_data <- factor(data)

factor_data
#[1] havar ovol  zun   namar zun   ovol  havar namar havar
#[10] havar zun  
#Levels: havar namar ovol zun


print(is.factor(factor_data))
# [1] TRUE

#-------------------------------------

e <- factor(c("high", "low", "medium", "low", "medium"))

e
#[1] high   low    medium low    medium
#Levels: high low medium

# str - structure - butets

str(e)
# Factor w/ 3 levels "high","low","medium": 1 2 3 2 3

#---------------------------------------











#-------Function / Функц--------------------------------

getwd()

#[1] "C:/Users/billy/Documents"

getwd()

# [1] "C:/Users/billy/Desktop"


#---------------------------------

help(getwd)
?getwd

#---------------------


rnorm(3)
#[1] -0.7878519  0.8774374  1.4418749

?rnorm()
# The Normal Distribution - heviin tarhalt

#rnorm(n, mean = 0, sd = 1)

rnorm(3, 10, 2)
#[1]  8.03830 11.50028 11.22756


rnorm(n=3, mean=10, sd = 2)


rnorm(mean=10, sd = 2, n=3)
#[1]  8.117430 11.884756  9.166874


#------------------------------------


x <- c(4,5,7)

seq()

?seq()

y <- seq(1,5)
y
#[1] 1 2 3 4 5

#-------------------

y <- seq(1,5,2)
y
#[1] 1 3 5


seq(from = 10, to = 20, by=3)

#[1] 10 13 16 19



#--------------------------


rep()
?rep()


z <- rep(5, 78)
z
#[1] 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5
#[29] 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5
#[57] 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5


z <- rep(3:4, times = 78)
z

#[1] 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4
#[29] 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4
#[57] 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4
#[85] 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4
#[113] 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4
#[141] 3 4 3 4 3 4 3 4 3 4 3 4 3 4 3 4


z <- rep(3:4, each=78)

z
#[1] 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3
#[29] 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3
#[57] 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 4 4 4 4 4 4
#[85] 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4
#[113] 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4
#[141] 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4

#----------------------------------------------------
#----------------------------------------------------









#-------Package / Багц--------------------------------

install.packages("ggplot2")

library(ggplot2)
#----------------
a <- data.frame(group = c("Apple iPhone",
                          "Huawei Mate30",
                          "Samsung Galaxy"),
                values = c(3,1,4))


#----Basic Barplot

b <- ggplot(a, aes(x=group, y=values, fill=group)) +
  geom_bar(stat='identity') +
  xlab("Ухаалаг гар утасны загвар") +
  ylab("Нийт Хэрэглээ") +
  ggtitle("Ухаалаг гар утасны хэрэглээ") +
  theme(plot.title = element_text(hjust = 0.5))


b + labs(fill = "Утасны загвар")


#----------------------------------------------------
#----------------------------------------------------
