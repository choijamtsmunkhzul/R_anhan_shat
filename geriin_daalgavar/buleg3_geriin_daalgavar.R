#'*----------------------------------------------------------*
#'*----------------------------------------------------------*
#'*----------------------------------------------------------*
#'[--------------Бүлэг 3 гэрийн даалгавар----------------]


#'[ Даалгавар 1 ]


#'[Матриц: Шинээр  niit_orlogo гэсэн хувьсагч дотор дараах тоон векторуудыг оруулна уу. ]

c(650000, 560000, 1000000, 5000000, 4000000)


#'[Шинээр  niit_zarlaga гэсэн хувьсагч дотор дараах тоон векторуудыг оруулна уу. ]

c(120000, 500000, 85000, 250000, 700000)


#'[Шинээр shine_matrix гэсэн хувьсагч дотор cbind() функцийг ашиглаж дээрх хувьсагчуудыг баганаар нь холбож матриц зохионо уу.]



#'[Шинээр зохиосон shine_matrix гэсэн хувьсагчийг print() комманд ашиглаж хэвлэж гаргана уу.]
print(shine_matrix)



#'[Доорх программыг уншуулж print() комманд ашиглаж хэвлэж гаргана уу. Доорх бичсэн программд мөрний нэрийг өөрчилсөн болно.]


rownames(shine_matrix) <- c("Davaa_garig", "Myagmar_garig", "Lhagva_garig", "Purev_garig", "Baasan_garig")
print(shine_matrix)


#'[Доорх программыг уншуулж .csv өргөтгөлтэй Эксел/Excel файлыг үүсгэнэ үү. Үүсгэсэн Эксел/Excel файлыг шалгана уу.]

write.csv(shine_matrix, "shine_matrix.csv")



#'*--------------------------------------------------------*


#'[ Даалгавар 2 ]

#'[Датафрэйм: Доорх программыг уншуулж шинээр хувьсагчийг үүсгэнэ үү. ]

nernuud <- c('Ganbold', 'Monkhbat', 'Annie', 'Zulaa', 'Dorj', 'Nergui')

nas <- c(45, 20, 25, 27, 24, 22)

mergejil <- c('Business_erheldeg', 'Marketing_manager', 'Duuchin', 'Designer', 'Programmer', 'Bagsh')

huis <- c('er', 'er', 'em', 'em', 'er', 'er')

ajilladag_eseh <- c('ugui', 'tiim', 'ugui', 'tiim', 'tiim', 'ugui')



#'[Дээрх зохиосон хувьсагчийг нэгтгэж data.frame() функцийг ашиглаж Датафрэйм үүсгэж sudalgaa гэсэн нэртэй хувьсагч дотор оруулна уу. ]






#'[Шинээр үүсгэсэн sudalgaa хувьсагчийг print() комманд ашиглаж хэвлэж гаргана уу.]





#'[Үүсгэсэн sudalgaa Дата-фрэймд шинээр доорх мөрний нэршлүүдийг өгнө үү. rownames() функцыг ашиглана уу.]

c('Irgen_1', 'Irgen_2', 'Irgen_3','Irgen_4', 'Irgen_5', 'Irgen_6')



#'[sudalgaa хувьсагчийг print() комманд ашиглаж хэвлэж гаргахад доорх байдлаар харагдах ёстой.]


print(sudalgaa)

#         nernuud nas          mergejil huis ajilladag_eseh
#Irgen_1  Ganbold  45 Business_erheldeg   er           ugui
#Irgen_2 Monkhbat  20 Marketing_manager   er           tiim
#Irgen_3    Annie  25           Duuchin   em           ugui
#Irgen_4    Zulaa  27          Designer   em           tiim
#Irgen_5     Dorj  24        Programmer   er           tiim
#Irgen_6   Nergui  22             Bagsh   er           ugui


#'[sudalgaa Дата-фрэймд 25-аас дээш насны нийт хэдэн хүн байна вэ? Доорх байдлаар программыг бичих бөгөөд нийт 2 иргэн 25 аас дээш настай байна. ]

sudalgaa[sudalgaa$nas > 25, ]

#        nernuud nas          mergejil huis ajilladag_eseh
#Irgen_1 Ganbold  45 Business_erheldeg   er           ugui
#Irgen_4   Zulaa  27          Designer   em           tiim





#'[Тэгвэл sudalgaa Дата-фрэймд 25 "болон" түүнээс дээш насны нийт хэдэн хүн байна вэ? программыг хэрхэн бичих вэ? ]






#'[sudalgaa Дата-фрэймээс зөвхөн nernuud,  ajilladag_eseh баганыг хэвлэж гаргана уу. Дараах байдлаар хэвлэгдэж гарах ёстой. Программыг хэрхэн бичих вэ?]



#         nernuud ajilladag_eseh
#Irgen_1  Ganbold           ugui
#Irgen_2 Monkhbat           tiim
#Irgen_3    Annie           ugui
#Irgen_4    Zulaa           tiim
#Irgen_5     Dorj           tiim
#Irgen_6   Nergui           ugui




#'[Доорх программыг уншуулж .csv өргөтгөлтэй Эксел/Excel файлыг үүсгэнэ үү. Үүсгэсэн Эксел/Excel файлыг шалгана уу.]

write.csv(sudalgaa, "sudalgaa.csv")


#'[Үүсгэсэн Эксел/Excel файлыг буцааж R программд оруулна уу? Доорх байдлаар программыг бичиж оруулна.]

shine_sudalgaa_file <- read.csv(file = "sudalgaa.csv")
print(shine_sudalgaa_file)
#        X  nernuud nas          mergejil huis ajilladag_eseh
#1 Irgen_1  Ganbold  45 Business_erheldeg   er           ugui
#2 Irgen_2 Monkhbat  20 Marketing_manager   er           tiim
#3 Irgen_3    Annie  25           Duuchin   em           ugui
#4 Irgen_4    Zulaa  27          Designer   em           tiim
#5 Irgen_5     Dorj  24        Programmer   er           tiim
#6 Irgen_6   Nergui  22             Bagsh   er           ugui


#'*--------------------------------------------------------*
