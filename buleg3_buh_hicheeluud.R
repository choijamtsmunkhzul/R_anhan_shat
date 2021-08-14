# R программын үндэс 2

# Matrices 1. rbind(), 2. cbind(), 3. matrix()

#'[ ---- Матриц хэрхэн зохиох вэ?------]

# 1. rbind()   row bind    Мөрөөр холбох

x <- c(2, 55)
y <- c(1, 45)
z <- c(34, 2)

b <- rbind(x,y,z)
b
#   [,1] [,2]
#x    2   55
#y    1   45
#z   34    2

#'[------------------]
# cbind column bind   Баганаар холбох

i <- c(2, 0, 32)
j <- c(41, 12, 1)

b <- cbind(i, j)
b
#      i  j
#[1,]  2 41
#[2,]  0 12
#[3,] 32  1


#'[-----------]
#'[----- 3. matrix()---]
#'[--- nrow   number row    Мөрний тоо]
#'[--- ncol   number column  Багана дахь нийт тоо]

b <- matrix(c(2, 0, 32, 42, 10, 2),
            nrow = 3, #mor   мөр
            ncol = 2) #bagana   багана

b
#      [,1] [,2]
#[1,]    2   42
#[2,]    0   10
#[3,]   32    2

#'[-----------------]


#'[-------matrix() Example 2----Матриц 2-р жишээ]

3:14
#[1]  3  4  5  6  7  8  9 10 11 12 13 14


M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M)
#      [,1] [,2] [,3]
#[1,]    3    4    5
#[2,]    6    7    8
#[3,]    9   10   11
#[4,]   12   13   14


#'[------]
M <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(M)
#     [,1] [,2] [,3]
#[1,]    3    7   11
#[2,]    4    8   12
#[3,]    5    9   13
#[4,]    6   10   14


#'[-------]

#'[----mor bagana ner ogoh--  Багана болон мөрт нэршил өгөх]

rownames <- c("row1", "row2", "row3", "row4")
colnames <- c("col1", "col2", "col3")

P <- matrix(c(3:14), nrow = 4, byrow = TRUE,
            dimnames = list(rownames, colnames))


#dimension names    Мөр болон багана дахь нэршлүүдийг харах
print(P)
#     col1 col2 col3
#row1    3    4    5
#row2    6    7    8
#row3    9   10   11
#row4   12   13   14

#'[----]




#'[-----Accessing Elements of Matrix---   Матриц дахь дурын элементийг татаж гаргах]
rownames <- c("row1", "row2", "row3", "row4")
colnames <- c("col1", "col2", "col3")

P <- matrix(c(3:14), nrow = 4, byrow = TRUE,
            dimnames = list(rownames, colnames))


#dimension names   Багана болон Мөр нэршил
print(P)

#     col1 col2 col3
#row1    3    4    5
#row2    6    7    8
#row3    9   10   11
#row4   12   13   14


#'[-------]
print(P[1,3])  # [1,3]  [мөр, багана]  [row, column]
#[1] 5

#'[----------]
print(P[4,2])
#[1] 13

#'[--------]
print(P[2,])
#col1 col2 col3 
#  6    7    8

#'[----------]
print(P[,3])
#row1 row2 row3 row4 
#5    8   11   14 






#'[-------]
#'[-----Matrices manipulation--]
#'[--------Матриц шинжлэх---------]

b <- matrix(c(2, 0, 32, 42, 10, 2),
            nrow = 3,
            ncol = 2)

b
#      [,1] [,2]
#[1,]    2   42
#[2,]    0   10
#[3,]   32    2

#'[-------------------]

b1 <- b + 1
b1
#     [,1] [,2]
#[1,]    3   43
#[2,]    1   11
#[3,]   33    3

#'[--------------]

b2 <- b * 3
b2
#      [,1] [,2]
#[1,]    6  126
#[2,]    0   30
#[3,]   96    6

#'[-----------------------]

b[1, ] <- b[1, ] - 2
b
#      [,1] [,2]
#[1,]    0   40
#[2,]    0   10
#[3,]   32    2

#'[-----------------------]

b[b > 3] <- NA #not available   Идэвхгүй дата
b
#     [,1] [,2]
#[1,]    0   NA
#[2,]    0   NA
#[3,]   NA    2

#'[---------------------]








#'[---Create Dataframe-----]
#'[---Дата фрэйм зохиох-------]

a <- data.frame(c('Bold', 'Bat', 'Dorj'),
                c(23, 25, 31),
                c(TRUE, TRUE, FALSE),
                stringsAsFactors = FALSE)
a
#   c..Bold....Bat....Dorj.. c.23..25..31. c.TRUE..TRUE..FALSE.
#1                     Bold            23                 TRUE
#2                      Bat            25                 TRUE
#3                     Dorj            31                FALSE


nrow(a)
#[1] 3

ncol(a)
#[1] 3

dim(a)
#[1] 3 3


#'[-------------------]

#'[--- Column and row names-----]
#'[--- Bagana bolon mor nershil oorchloh  Багана болон мөр нэршил өөрчлөх]

colnames(a) <- c('Ner', 'nas', 'tsagaan_hoolton')
rownames(a) <- c('Ovchton1', 'Ovchton2', 'Ovchton3')

a
#          Ner nas tsagaan_hoolton
#Ovchton1 Bold  23            TRUE
#Ovchton2  Bat  25            TRUE
#Ovchton3 Dorj  31           FALSE

#'[-----------------]
#structure butets

str(a)
#data.frame':	3 obs. of  3 variables:
#  $ Ner            : chr  "Bold" "Bat" "Dorj"
#$ nas            : num  23 25 31
#$ tsagaan_hoolton: logi  TRUE TRUE FALSE

#'[-------------------------------------]





#'[------Data frame access elements----  Дата фрэйм элемент татах]


a
#          Ner nas tsagaan_hoolton
#Ovchton1 Bold  23            TRUE
#Ovchton2  Bat  25            TRUE
#Ovchton3 Dorj  31           FALSE


a[ ,'Ner']
#[1] "Bold" "Bat"  "Dorj"

a[ ,1]
#[1] "Bold" "Bat"  "Dorj"

#'[-----------------]

a['Ovchton3','nas']
#[1] 31

a[3, 2]
#[1] 31

#'[-------$------]

a$Ner
#[1] "Bold" "Bat"  "Dorj"

a[,1]
#[1] "Bold" "Bat"  "Dorj"

a[ , 'Ner']
#[1] "Bold" "Bat"  "Dorj"

#'[-----------------------------------]


#'[---------------Dataframe manipulation----------]
#'[---------------Дата фрэйм шинжлэх--------------]


a
#          Ner nas tsagaan_hoolton
#Ovchton1 Bold  23            TRUE
#Ovchton2  Bat  25            TRUE
#Ovchton3 Dorj  31           FALSE

#'[-------------]

a[a[,2] > 24,]
#          Ner nas tsagaan_hoolton
#Ovchton2  Bat  25            TRUE
#Ovchton3 Dorj  31           FALSE

#'[-----------------]

a[a[, "nas"] > 24, ]
#          Ner nas tsagaan_hoolton
#Ovchton2  Bat  25            TRUE
#Ovchton3 Dorj  31           FALSE

#'[----------------]

a[a$nas > 24, ]
#          Ner nas tsagaan_hoolton
#Ovchton2  Bat  25            TRUE
#Ovchton3 Dorj  31           FALSE

#'[------------------]


a
#          Ner nas tsagaan_hoolton
#Ovchton1 Bold  23            TRUE
#Ovchton2  Bat  25            TRUE
#Ovchton3 Dorj  31           FALSE

result <- data.frame(a$nas, a$tsagaan_hoolton)
result
#  a.nas a.tsagaan_hoolton
#1    23              TRUE
#2    25              TRUE
#3    31             FALSE


#'[-------------]
result1 <- a[1:2,]
result1
#         Ner nas tsagaan_hoolton
#Ovchton1 Bold  23            TRUE
#Ovchton2  Bat  25            TRUE


#'[---------------]

result2 <- a[c(1,3),]
result2
#          Ner nas tsagaan_hoolton
#Ovchton1 Bold  23            TRUE
#Ovchton3 Dorj  31           FALSE

#'[----------------------]

a$huis <- c("er", "er", "er")
v <- a
v
#          Ner nas tsagaan_hoolton huis
#Ovchton1 Bold  23            TRUE   er
#Ovchton2  Bat  25            TRUE   er
#Ovchton3 Dorj  31           FALSE   er

#'[---------------------------------]







#'[-----------Combine 2 data frames----------2 дата фрэйм хооронд нь холбох---]

b <- data.frame(c('Dulam', 'Bolor', 'Zulaa'),
                c(30, 28, 31),
                c(TRUE, TRUE, TRUE),
                c('em', 'em', 'em'),
                stringsAsFactors = FALSE
)

b

colnames(b) <- c('Ner', 'nas', 'tsagaan_hoolton', 'huis')
rownames(b) <- c('Ovchton4', 'Ovchton5', 'Ovchton6')

b
#            Ner nas tsagaan_hoolton huis
#Ovchton4 Dulam  30            TRUE   em
#Ovchton5 Bolor  28            TRUE   em
#Ovchton6 Zulaa  31            TRUE   em

a
#Ner nas tsagaan_hoolton huis
#Ovchton1 Bold  23            TRUE   er
#Ovchton2  Bat  25            TRUE   er
#Ovchton3 Dorj  31           FALSE   er


#'[------------------]

a_b <- rbind(a, b)    #rowbind
a_b
#           Ner nas tsagaan_hoolton huis
#Ovchton1  Bold  23            TRUE   er
#Ovchton2   Bat  25            TRUE   er
#Ovchton3  Dorj  31           FALSE   er
#Ovchton4 Dulam  30            TRUE   em
#Ovchton5 Bolor  28            TRUE   em
#Ovchton6 Zulaa  31            TRUE   em





#'[-----------------------------------------------------------------------------]
#'[-------Excel file, Text file-----------------Эксел болон Текст хэлбэрийн файл руу хадгалах-------]

a_b
#           Ner nas tsagaan_hoolton huis
#Ovchton1  Bold  23            TRUE   er
#Ovchton2   Bat  25            TRUE   er
#Ovchton3  Dorj  31           FALSE   er
#Ovchton4 Dulam  30            TRUE   em
#Ovchton5 Bolor  28            TRUE   em
#Ovchton6 Zulaa  31            TRUE   em

getwd()
#[1] "C:/Users/billy/Desktop"

#'[-------Excel .csv----]

write.csv(a_b, file = "shine_excel_file.csv")

#'[------Text .txt-----]
write.table(a_b, file = "shine_text_file.txt")


#'[------.CSv R studio ---------]

z <- read.csv(file = "shine_excel_file.csv")
z
#X   Ner nas tsagaan_hoolton huis
#1 Ovchton1  Bold  23            TRUE   er
#2 Ovchton2   Bat  25            TRUE   er
#3 Ovchton3  Dorj  31           FALSE   er
#4 Ovchton4 Dulam  30            TRUE   em
#5 Ovchton5 Bolor  28            TRUE   em
#6 Ovchton6 Zulaa  31            TRUE   em


#'[-------]
x <- read.table(file = "shine_text_file.txt")
x
#Ner nas tsagaan_hoolton huis
#Ovchton1  Bold  23            TRUE   er
#Ovchton2   Bat  25            TRUE   er
#Ovchton3  Dorj  31           FALSE   er
#Ovchton4 Dulam  30            TRUE   em
#Ovchton5 Bolor  28            TRUE   em
#Ovchton6 Zulaa  31            TRUE   em


#'[------------------------------------------------------]
#'[------------------------------------------------------]
