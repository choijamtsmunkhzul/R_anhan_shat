
#'*----------------------------------------------------------*
#'*----------------------------------------------------------*
#'*----------------------------------------------------------*
#'*----------------------------------------------------------*
#'*----------------------------------------------------------*
#'*----------------------------------------------------------*
#'[--------------Бүлэг 4 гэрийн даалгавар----------------]

#'[Доорх багцыг уншуулж идэвхжүүлнэ үү.]
library(ggplot2)

#'[ Даалгавар 1]

#'[Та бүхэн geriin_daalgavar хавтас/folder дотор байгаа banknii_hariltsagchid.csv өргөтгөлтэй эксел файлыг R программд оруулна уу. Доорх программыг уншуулна уу.]

banknii_hariltsagchid <- read.csv("banknii_hariltsagchid.csv", header = TRUE)



#'[Эксел файлыг амжилттай оруулсан бол дараах байдлаар харагдах ёстой.]
head(banknii_hariltsagchid)
#
#  Hariltsagchdiin_id Credit_onoo Bairshil    Huis
#1           15634602         619 Mongolia Emegtei

#  Nas Dansan_dahi_mongo_usd
#1  42                  0.00
#2  41              83807.86

#  Avsan_uilchilgeenii_too Olon_ulsiin_kardtai_eseh
#1                       1                     Tiim
#2                       1                     Ugui

#  Idevhtei_hariltsagch_eseh Avdag_Tsalin_usd
#1                      Tiim        101348.88
#2                      Tiim        112542.58

#  zeel_avsan_eseh
#1            Tiim
#2            Ugui

#'[----------------------------------------------------------------]


#'[ Даалгавар 2]


#'[Банкны харилцагчдыг аль улсад амьдардгаар нь ангилна уу.]
#'[Доорх программыг уншуулна уу]
factor(banknii_hariltsagchid$Bairshil)

#'[Хариулт нь дараах байдлаар харагдах ёстой.]
# Levels: Brazil England Germany Japan Mongolia Scotland South_Korea Spain USA

#'[----------------------------------------------------------------]



#'*----------------------------------------------------------*

#'[Даалгавар хийх жишээ]

#'[Barplot буюу туузан график: ]

#'[Дээрхи улсуудад нийт хичнээн банкны харилцагчид амьдарч байна вэ? Barplot буюу туузан график байгуулна уу.]

#'[Доорх программыг уншуулж баганан графикийг .png зураг файлаар татаж авч харна уу. Аль улс оронд амьдардаг банкны харилцагчдын тоо хамгийн их эсвэл хамгийн бага байна вэ?]

#'[Доорх программыг уншуулна уу]
data <- data.frame(bairshil = banknii_hariltsagchid$Bairshil)
head(data)
#   bairshil
#1 Mongolia
#2    Spain
#3 Mongolia

ggplot(data = data, aes(x = bairshil)) +
  geom_bar()

#'[Дүгнэлт: Туузан графикаас харахад Монголд амьдардаг банкны харилцагчдын тоо хамгийн их, Шотландад амьдардаг банкны харилцагчдын тоо хамгийн бага байна.]

#'*----------------------------------------------------------*








#'[----------------------------------------------------------------]

#'[ Даалгавар 3]

#'[Barplot буюу туузан график: ]

#'[Нийт банкны харилцагчдын хэд нь эрэгтэй хэд нь эмэгтэй байна вэ? Barplot буюу туузан график байгуулна уу.]

#'[Банкны харилцагчдын хүйсийн ялгааг гаргана уу. ]


Barplot <- data.frame(huis = banknii_hariltsagchid$Huis)
head(Barplot)
#     huis
#1 Emegtei
#2 Emegtei
#3 Emegtei
#4 Emegtei
#5 Emegtei
#6 Eregtei



#'[Дүгнэлт:]



#'*----------------------------------------------------------*





#'[----------------------------------------------------------------]


#'[ Даалгавар 4]

#'[Дугуй график буюу piecharts: ]

#'[Банкны нийт харилцагчдын насны ангилалыг Дугуй график буюу piecharts дүрсэлнэ үү.]

#'[Доорх программыг уншуулж нийт насны ангилал болон тухайн насны ангилалд хэдэн банкны харилцагчид байгааг олно уу.]

banknii_hariltsagdchiin_nas <- cut(banknii_hariltsagchid$Nas, breaks=c(18, 25, 30, 35, Inf),
                                   labels=c("18-25 нас", "25-30 нас", "30-35 нас", "35 болон түүнээс дээш нас"), right=FALSE, include.lowest = TRUE)

table(banknii_hariltsagdchiin_nas)
#banknii_hariltsagdchiin_nas
#18-25 нас
#      457 үйлчлүүлэгч 18-25 насны хооронд байна.
#25-30 нас
#     1184 үйлчлүүлэгч 25-30 насны хооронд байна.
#30-35 нас
#     2038 үйлчлүүлэгч 30-35 насны хооронд байна.
#35 болон түүнээс дээш нас
#                     6321 үйлчлүүлэгч 5 болон түүнээс дээш настай байна.

#'[Дээрх хүснэгтийг ашиглаж Дугуй график буюу piecharts байгуулна уу.]


pie(table(.............))





#'[Дүгнэлт:]




#'[----------------------------------------------------------------]


#'[ Даалгавар 5]



#'[Тархалтат График буюу Scatter plot: ]


#'[Банкны нийт харилцагчдын насны ангилалаар нь ангилж дансны дундаж үзүүлэлт болон авдаг цалингын дундаж үзүүлэлтийг Тархалтат График буюу Scatter plot дүрсэлнэ үү.]


#'[Та бүхэн geriin_daalgavar хавтас/folder дотор байгаа banknii_hariltsagdchiin_nas_dundaj_dans_tsalin.csv өргөтгөлтэй эксел файлыг R программд оруулна уу. Доорх программыг уншуулна уу.]


banknii_hariltsagdchiin_nas_dundaj_dans_tsalin <- read.csv("banknii_hariltsagdchiin_nas_dundaj_dans_tsalin.csv", header = TRUE)



#'[Эксел файлыг амжилттай оруулсан бол дараах байдлаар харагдах ёстой.]
head(banknii_hariltsagdchiin_nas_dundaj_dans_tsalin)
#  X   nas dans_dundaj tsalin_dundaj
#1 1 18-25    79326.56     104444.38
#2 2 26-30    70568.00     102833.26
#3 3 31-40    77317.77      99708.86
#4 4 41-60    84474.43     104221.32


#'[Доорх программыг уншуулна уу]
# load ggplot2
library(ggplot2)

#install.packages("hrbrthemes")
library(hrbrthemes)



#'[Дутууг гүйцээнэ үү.]
banknii_hariltsagdchiin_nas_dundaj_dans <- ggplot(........, aes(x=nas, y=dans_dundaj, color=dans_dundaj)) +
  geom_point(size=8) +
  theme_ipsum()


banknii_hariltsagdchiin_nas_dundaj_dans



banknii_hariltsagdchiin_nas_dundaj_tsalin <- ggplot(........, aes(x=nas, y=dans_dundaj, color=dans_dundaj)) +
  geom_point(size=8) +
  theme_ipsum()


banknii_hariltsagdchiin_nas_dundaj_salin



#'[Дүгнэлт:]


#'[----------------------------------------------------------------]



#'[ Даалгавар 6]

#'[3 хэмжээст график буюу 3d charts: ]


#'[Дээрхи дата өгөгдлийг ашиглаж 3 хэмжээст график буюу 3d charts дүрсэлнэ үү.]

#'[Доорх программыг уншуулна уу]


# load ggplot2
library(ggplot2)
#install.packages("hrbrthemes")
#library(hrbrthemes)
install.packages("plotly")
library(plotly)



data <- banknii_hariltsagdchiin_nas_dundaj_dans_tsalin


axx <- list(
  title = "Насны ангилал"
)
axy <- list(
  title = "Дансны дундаж мөнгө"
)
axz <- list(
  title = "Дундаж авдаг цалин"
)


#'[Дутууг гүйцээнэ үү.]

#'[-------------------------]
fig <- plot_ly(x=data$nas, y=data$dans_dundaj, z=data$tsalin_dundaj,
               type="scatter3d", mode="markers", color= data$nas)

fig1 <- fig %>%
  layout(title = "Банкны харилцагчдын насны ангилал дахь дансны дундаж мөнгөн дүн болон авдаг цалингын дундаж",
         scene = list(xaxis=.....,yaxis=.....,zaxis=......))
fig1


#'[вэб сайтанд зориулагдсан web html өртгөлөөр хадгалах боломжтой.]

#'[Хариултыг geriin_daalgavar хавтас/folder дотор байгаа banknii_hariltsagdchiin_nas_dundaj_dans_tsalin.html өргөтгөлөөр хадгалсан байгаа. Та бүхэн mouse/гар хулганаар товшиж харна уу.]


#'[----------Дараагийн дунд шатны сургалтан дээр уулзацгаая------------------------------------------------------]




