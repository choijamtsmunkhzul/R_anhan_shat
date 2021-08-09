
#'[----------------------------]
#'[-----------------------------]
#'[-----------R studio section 4-----------]

# 1.Бэлэн дата эксел файлыг R studio -д оруулах
# 2.Дата өгөгдлийн танилцуулга
# 3.График байгуулахад зориулагдсан багц суулгах

# 1. 

getwd()
#[1] "C:/Users/billy/Desktop"

a <- read.csv(file = "coronadata_negude.csv")
head(a)
#  X      country confirmed death recovered
#1 1           US     67023  1259     24005
#2 2        India     61242   793     39026
#3 3       Brazil     52383  1212     52047

#'[-------------]

# install.packages("ggplot2")

library(ggplot2)


#'[----------------------------]
#'[-----------------------------]








#'[--------------------------------------------]
#'[--------ggplot() Barplot Туузан график байгуулах---]


getwd()
#[1] "C:/Users/billy/Desktop"

a <- read.csv(file = "coronadata_negude.csv")
head(a)
#  X      country confirmed death recovered
#1 1           US     67023  1259     24005
#2 2        India     61242   793     39026
#3 3       Brazil     52383  1212     52047

#'[-------------]

# install.packages("ggplot2")

library(ggplot2)

#'[---------Туузан график ------]

total_recovered <- sum(a$recovered, na.rm = TRUE)   #sum niilber 

total_recovered # [1] 198376


total_death <- sum(a$death, na.rm = TRUE)

total_death #[1] 6266


total_case <- total_recovered + total_death

total_case #[1] 204642

#'[--------------------------------------------]

# Create data frame Дата фрэйм зохиох


data <- data.frame(
  names = c("Нийт оношлогдсон", "Нийт Эдгэсэн", "Нийт нас барсан"),
  values = c(total_case, total_recovered, total_death)
)

dim(data) #[1] 3 2


#'[-------]

p <- ggplot(data, aes(x = names, y = values)) + geom_bar(stat = "identity")

p

#'[-------]

p1 <- p + 
  scale_x_discrete(limits = c("Нийт оношлогдсон", "Нийт Эдгэсэн", "Нийт нас барсан"))

p1

#'[---------]

p1 + coord_flip()


#'[-------]

ggplot(data, aes(x=names, y=values)) + 
  geom_bar(stat = "identity", color = "blue", fill = "white") +
  scale_x_discrete(limits = c("Нийт оношлогдсон", "Нийт Эдгэсэн", "Нийт нас барсан"))


#'[-------------]

ggplot(data, aes(x=names, y=values)) + 
  geom_bar(stat = "identity", color = "blue", fill = "white", width = 0.5) +
  scale_x_discrete(limits = c("Нийт оношлогдсон", "Нийт Эдгэсэн", "Нийт нас барсан"))

#'[---------------]


ggplot(data, aes(x=names, y=values)) + 
  geom_bar(stat = "identity", fill = "steelblue", width = 0.5) +
  scale_x_discrete(limits = c("Нийт оношлогдсон", "Нийт Эдгэсэн", "Нийт нас барсан"))


#'[-----------------------]



ggplot(data, aes(x=names, y=values)) + 
  geom_bar(stat = "identity", fill = "steelblue", width = 0.5) +
  scale_x_discrete(limits = c("Нийт оношлогдсон", "Нийт Эдгэсэн", "Нийт нас барсан")) +
  geom_text(aes(label = values), vjust= -0.3, size = 5) +
  theme_minimal() + xlab("") +
  ylab("Нийт тохиолдол") +
  ggtitle("Дэлхий дахинд Ковид 19-р өвчлөгсдийн байдал \n2020 оны 7 сар хүртэлх тохиолдлын тоо")


#'[------------------------]



ggplot(data, aes(x=names, y=values)) + 
  geom_bar(stat = "identity", fill = c("steelblue", "green", "red"), width = 0.5) +
  scale_x_discrete(limits = c("Нийт оношлогдсон", "Нийт Эдгэсэн", "Нийт нас барсан")) +
  geom_text(aes(label = values), vjust= -0.3, size = 5) +
  theme_minimal() + xlab("") +
  ylab("Нийт тохиолдол") +
  ggtitle("Дэлхий дахинд Ковид 19-р өвчлөгсдийн байдал \n2020 оны 7 сар хүртэлх тохиолдлын тоо")

#'[--------------------------]











#'[--------------------------------------------------------------------------------------------------------------]
#'[--------------------------------------------------------------------------------------------------------------]
#'[--------------------------------------------------------------------------------------------------------------]
#'[--------------------------------------------------------------------------------------------------------------]
#'[--------------------------------------------------------------------------------------------------------------]
#'[----------R piecharts  Дугуй график-------------------------------------------------------------]


getwd()
#[1] "C:/Users/billy/Desktop"

a <- read.csv(file = "coronadata_negude.csv")
head(a)
#  X      country confirmed death recovered
#1 1           US     67023  1259     24005
#2 2        India     61242   793     39026
#3 3       Brazil     52383  1212     52047

#'[-------------]



#'[---------------------]

head(a)   #corona data

#  X      country confirmed death recovered
#1 1           US     67023  1259     24005
#2 2        India     61242   793     39026
#3 3       Brazil     52383  1212     52047
#4 4 South Africa     11014   193     16570
#5 5     Colombia      9488   295      5692
#6 6       Mexico      8458   688      7015


dim(a)
#[1] 188   5



#'[------]
country_us <- a[1, 'confirmed']
country_us    #[1] 67023


country_India <- a[2, 'confirmed'] # [1] 61242

country_brazil <- a[3, 'confirmed'] #[1] 52383

country_south_africa <- a[4, 'confirmed'] # [1] 11014

country_Colombia <- a[5, 'confirmed'] # [1] 9488



#'[--------------------------------------------]
#'[--------------------------------------------]

# data frame үүсгэх
data <- data.frame(
  names=c("АНУ", "Энэтхэг", "Бразил", "Африк", "Колумб") ,  
  values=c(country_us , country_India, country_brazil, country_south_africa, country_Colombia)
)

#'[--------------------------------]
#'[--------------------------------]

# Дугуй график үүсгэх
pie(data$values, data$names)


#'[-------------------------------------------------------------]
#'[------------------Pie chart Дугуй график сайжруулах--------------------]


# install.packages("RColorBrewer")


library(RColorBrewer) # <-  Өнгө багц
myPalette <- brewer.pal(5, "Set2") 

# 
pie(data$values, data$names, border="white", col=myPalette,  main = "Улс орнуудын Ковид19-р оношлогдсон байдал \n2020 оны 7-р сар хүртэлх оношлогдсон тоо")
legend("bottomleft", data$names, cex = 0.4,
       fill = myPalette)


#'[-------------------------------------------------------------]
#'[-------------------------------------------------------------]
#'[-------------------------------------------------------------]



# Дугуй графикийг хувиар % илэрхийлэх

piepercent <- round(100*data$values/sum(data$values), 1)


sum(data$values) #[1] 201150

67023 * 100 / 201150 #[1] 33.31991


#
pie(data$values, piepercent, border="white", col=myPalette,  main = "Улс орнуудын Ковид19-р оношлогдсон байдал \n2020 оны 7-р сар хүртэлх оношлогдсон тоо")
legend("bottomleft", data$names, cex = 0.45,
       fill = myPalette)


#'[------------------------------------------------------------]
#'[-------------------------------------------------------------]
#'[-------------------------------------------------------------]









#'[--------------------------------------------------------------------------------------------------------------]
#'[---------R Line chart  Шугаман график-------------------------------------------------------]


#
library(ggplot2)
#

# Insert data .csv
getwd()
#
data2 <- read.csv(file = 'corona_data_linechart.csv')  
head(data2)
#  Month        Category   cases
#1     1    Active_total   36801
#2     1 Recovered_total     844
#3     1     Death_total     889
#4     2    Active_total 1244301
#5     2 Recovered_total  380794
#6     2     Death_total   46910


#
class(data2) #[1] "data.frame"
#



#'[--------Line charts- Шугаман график-----------]

p1 <- ggplot() + geom_line(aes(y = cases, x = Month, colour = Category),
                           data = data2, stat="identity")
p1
#'[----]


#'[--------Line charts2-------------]
#'[---Adjusting line width---шугаман графикийн өргөний хэмжээ]

p1 <- ggplot() + geom_line(aes(y = cases, x = Month, colour = Category), size=1.5,
                           data = data2, stat="identity")
p1


#'[----------nershil oorchloh----Line charts 3 --------Шугаман графикийн нэршил өөрчлөх----]


data2$Category <- factor(data2$Category, 
                         levels = c("Active_total", "Recovered_total", "Death_total"),
                         labels = c("Нийт Оношлогдсон", "Нийт эдгэсэн", "Нийт нас барсан"))

p1 <- ggplot() + 
  geom_line(aes(y = cases, x = Month, colour = Category), size=1.5,
                data = data2, stat="identity") +
  theme(legend.position="bottom", legend.direction="horizontal", 
        legend.title = element_blank())
p1

#'[-----------------------------------]
#'[-----------------------------------]




#'[--------------------------------------------------------]
#'[-----------Line charts 3---------------------------]
#'[--------Adjusting x-axis scale----- Х тэнхлэг Сар бүрээр харуулах---------------------]


p1 <- p1 + scale_x_continuous(breaks=seq(1,7,1))
p1
#'[---------------------------------]
#'[---------------------------------]
#'[---------------------------------]




#'[---------------------------------------------------------]
#'[---------Line charts 4-------------------]
#'[-------------Шугаман графикийн х болон у тэнхлэгийг засварлах & Гарчиг нэмэх----------------------]

p1 <- p1 + 
      ggtitle("Дэлхийн Улс орнуудын Ковид19-н тархалтын байдал \n2020 оны 7-р сар хүртэлх байдлаар") + 
        labs(x="Саруудын тоо", y="Тохиолдлын тоо") +  
          theme(plot.title = element_text(hjust = 0.5))
p1


#'[---------------------------------]
#'[---------------------------------]
#'[---------------------------------]



#'[---------------------------------------------------------]
#'[-------Line Plot 5-------------------]
#'[----------Шугаман графикийн Өнгийг өөрчлөх---------------------]


colour <- c("cornflowerblue", "chartreuse", "coral2")
p1 <- p1 + scale_colour_manual(values=colour)
p1

#'[---------------------------------]
#'[---------------------------------]
#'[---------------------------------]



#'[----------------------------------------------------------------------------------------------]
#'[------Line Plot 6::----Шугаман графикын арын хэсгийг өөрчлөх------------------]

p2 <- p1 + theme(
  # Hide panel borders and remove grid lines
  panel.border = element_blank(),
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank(),
  # Change axis line
  axis.line = element_line(colour = "black"),
  panel.background = element_blank()
)

p2
#'[-----------]

#'[-----------Анхаарал хандуулсанд баярлалаа--------------------------------]
#'[-------------------------------------------------------------------------]









#'[--------------------------------------------------------------------------]
#'[----------R beginner Scatter plot --Тархалтат График-----------------------------------]

# Дата өгөгдөл оруулах
getwd()

a <- read.csv(file = 'coronadata_negude.csv')  
head(a)
#  X      country confirmed death recovered
#1 1           US     67023  1259     24005
#2 2        India     61242   793     39026
#3 3       Brazil     52383  1212     52047   


#'[-----------------]


#'[-----------------------------------]


# load ggplot2
library(ggplot2)
#

#install.packages("hrbrthemes")

library(hrbrthemes)
#

a <- a[1:10, ]    # top 10 country, 10 улс орнуудыг сонгох
head(a)
#  X      country confirmed death recovered
#1 1           US     67023  1259     24005
#2 2        India     61242   793     39026
#3 3       Brazil     52383  1212     52047
#4 4 South Africa     11014   193     16570
#5 5     Colombia      9488   295      5692
#6 6       Mexico      8458   688      7015




# Тархалтат график--- Нийт нас баралт болон Нийт оношлогдсон тохиолдлуудын
                    # hoorondiin hamaaral
s1 <- ggplot(a, aes(x=death, y=confirmed, color=country)) + 
  geom_point(size=8) +
  theme_ipsum()


s1
#'[----------------------------]
#'[----------Үүсгэсэн цэгээр Нийт нас баралтын хэмжээг харуулах-------------------------]

s2 <- ggplot(a, aes(x=recovered, y=confirmed, color=country)) + 
  geom_point(aes(size= death)) +
  theme_ipsum() 


s2

#'[---------------------Гарчиг өгөх, х болон у тэнхлэгийн нэршлийг өөрчлөх------------------------]

s3 <- s2 +
  labs(title="Дэлхийн Улс орнуудын Ковид19-р нийт оношлогдсон болон эдгэсэн тохиолдлууд", subtitle = "2020.01.01 - 2020.07.30", 
       x="Нийт эдгэсэн тохиолдол", y = "Нийт оношлогдсон тохиолдол") +
  
  
  theme_classic()  + 
  theme(plot.title = element_text(hjust = 0.2, size = 15, color="black", face="bold"),
                           plot.subtitle = element_text(hjust = 0.5, size = 12, color="black"),
                           axis.title.x = element_text(color="black", size=14, face="bold"),
                           axis.title.y = element_text(color="black", size=14, face="bold")
  )


s3

# X болон у тэнхлэгийн уртын хэмжээг тодорхойлох
s4 <- s3 + xlim(0, 100000)+ylim(0, 100000)
s4


#'[-----Х болон у тэнхлэгийн уртын хэмжээг өөрчлөх-----------------------------------]

s4 <- s3 + xlim(0, 60000)+ylim(0, 80000)
s4



#'[-------------country болон death нэршлийг өөрчлөх---------]
s5 <- s4 + labs(
  color = "Улс Орнууд",
  size = "Нас баралт")

s5


# Цэгэн хэмжээг томруулах 
s6 <- s5 +  
  guides(colour = guide_legend(override.aes = list(size=5)))

s6


#
#'[------------------------------Анхаарал хандуулсанд баярлалаа-------------------------------------------------------------------------------]
#'[--------------------------------------------------------------------------------------------------------------]












#'[--------------------------------------------------------------------------------------------------------------]
#'[--------------------------------------------------------------------------------------------------------------]
#'[---------R 3d charts ---3 хэмжээст график------------------------------------------------------]



# Дата өгөгдөл оруулах
getwd()

a <- read.csv(file = 'coronadata_negude.csv')  
head(a)
#  X      country confirmed death recovered
#1 1           US     67023  1259     24005
#2 2        India     61242   793     39026
#3 3       Brazil     52383  1212     52047   # 

#'[---------------Хэрэглэх Багц идэвхжүүлэх--------------]

# load ggplot2
library(ggplot2)
#install.packages("hrbrthemes")
#library(hrbrthemes)

install.packages("plotly")
##
library(plotly)
##


a <- a[1:10, ]    # 10 улс орнуудыг сонгох.
head(a)
#  X      country confirmed death recovered
#1 1           US     67023  1259     24005
#2 2        India     61242   793     39026
#3 3       Brazil     52383  1212     52047
#4 4 South Africa     11014   193     16570
#5 5     Colombia      9488   295      5692
#6 6       Mexico      8458   688      7015





#'[-----------------------------------------------------------]
#'[-----------------------------------------------------------]
#'[----------------3D charts-- 3 хэмжээст график---------------------------]

#
data <- a


axx <- list(
  title = "Нийт эдгэсэн тохиолдол"
)

axy <- list(
  title = "Нийт оношлогдсон тохиолдол"
)

axz <- list(
  title = "Нийт нас барсан"
)



#'[-------------------------]
fig <- plot_ly(x=data$recovered, y=data$confirmed, z=data$death, 
               type="scatter3d", mode="markers", color= data$country)

fig1 <- fig %>% 
  layout(title = "Дэлхийн Улс орнуудын Ковид19-р нийт оношлогдсон болон эдгэсэн тохиолдлууд", 
         scene = list(xaxis=axx,yaxis=axy,zaxis=axz))
fig1

# вэб сайтанд зориулагдсан web html өртгөлөөр хадгалах боломжтой.


#'[-----------------------------Анхаарал хандуулсан баярлалаа---------------------------------------------------------------------------------]
#'[---------------Дараагийн R программчлалын дунд шатны сургалтан дээр уулзацгаая-----------------------------------------------------------------------------------]
#'[-------------------------------------------------------------------------------------------------------]
