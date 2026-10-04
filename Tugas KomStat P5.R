#Nama : Geymi Feli Permata
#NIM : 333825016
#Tugas 5 Komputasi Statistika

#SOAL 1 : SEBARAN EKSPONENSIAL
#Rata-rata waktu tunggu
mu <- 5

#Parameter rate
lambda <- 1 / mu

#Menghitung P(X > 5)
P_X_gt_5 <- pexp(5, rate = lambda, lower.tail = FALSE)

P_X_gt_5

#SOAL 2 : SEBARAN UNIFORM CONTINUE
#Batas interval
a <- 0
b <- 20

#Varians teoritis
var_waktu <- (b - a)^2 / 12
var_waktu

#SOAL 3 : SEBARAN EKSPONENSIAL
#Rata-rata masa pakai
mu <- 10

#Parameter rate
lambda <- 1 / mu

#Peluang sensor rusak sebelum 5 tahun
P_X_lt_5 <- pexp(5, rate = lambda)
P_X_lt_5

#SOAL 4 : SEBARAN NORMAL (GAUSSIAN)
#Parameter
mu <- 250
sigma <- 5

#Peluang berat kurang dari 240 gram
P_underweight <- pnorm(240,
                       mean = mu,
                       sd = sigma)
P_underweight