#Nama : Geymi Feli Permata
#NIM : 3338250016
#Tugas Pertemuan 3 Komputasi Statistika

##SOAL 1 : Buka data airquality
data("airquality")
#Menampilkan data
airquality
#Lihat struktur data
str(airquality)

##SOAL 2 : Buat histogram untuk variabel Wind, sertakan pula density nya
#Histogram variabel Wind
hist(airquality$Wind,
     xlab = "Wind",
     main = "Histogram Kecepatan Angin",
     col = "violet")

#Estimasi kepadatan (Density)
dens <- density(airquality$Wind, na.rm = TRUE)

#Histogram + kurva kepadatan
hist(airquality$Wind,
     probability = TRUE,
     xlab = "Wind",
     main = "Histogram + Density Curve",
     col = "violet")

#Menambahkan garis kepadatan
lines(dens, col = "navyblue", lwd = 2)

##SOAL 3 : Buat boxplot dan steam and leaf
#Boxplot
boxplot(airquality$Wind,
        horiz = TRUE,
        main = "Boxplot Kecepatan Angin",
        xlab = "Wind")

#Steam and Leaf
stem(airquality$Wind)

##SOAL 4 : Buat scatter plot
#Pola pada Data Bivariat
#Scatterplot Temp terhadap Wind
plot(Temp ~ Wind,
     data = airquality,
     pch = 16,
     main = "Scatterplot Temperatur terhadap Wind",
     xlab = "Wind",
     ylab = "Temperature")

# Menambahkan garis regresi
abline(lm(Temp ~ Wind, data = airquality),
       col = "hotpink",
       lwd = 2)
