#Nama : Geymi Feli Permata
#NIM : 333825016
#Tugas 4 Komputasi Statistika

##SOAL 1 : SEBARAN POISSON
#Parameter
lambda <- 3

#Menghitung P(X >= 5)
peluang_x <- 1 - ppois(4, lambda)
peluang_x

##SOAL 2 : SEBARAN HYPERGEOMETRIC
N <- 50 #jumlah seluruh bola
K <- 10 #jumlah bola mera
n <- 5 #jumlah bola yang diambil

#Domain jumlah bola merah yang mungkin terambil
k <- seq(from = max(0, n + K - N), 
         to = min(n, K))

#Menhitung PMF
pmf <- dhyper(k, m = K, n = N - K, k = n)

#Menampilkan peluang
data.frame(k = k, P = pmf)

#Plot PMF
plot(k, pmf,
     type = "h",
     lwd = 3,
     main = "Hypergeometric(N=100, K=20, n=10)",
     xlab = "k (banyak bola merah)",
     ylab = "P(X=k)")

#Simulasi pengambilan tanpa pengembalian
m <- 1000
samp <- rhyper(m,
               m = K,
               n = N - K,
               k = n)
head(samp)

##SOAL 3 : SEBARAN BINOMIAL
#Parameter
n <- 15
p <- 0.4

#Simulasi 1.000 percobaan
set.seed(2025)
m <- 1000
simulasi <- rbinom(m,
                   size = n,
                   prob = p)

#Melihat sebagian hasil simulasi
head(simulasi)

#Histogram hasil simulasi
hist(simulasi,
     breaks = seq(-0.5, 15.5, by = 1),
     probability = TRUE,
     main = "Simulasi Binomial (n=15, p=0.4)",
     xlab = "Jumlah sukses",
     ylab = "Probabilitas")

#PMF Binomial teoritis
x <- 0:n
pmf <- dbinom(x,
              size = n,
              prob = p)

#Plot PMF
plot(x, pmf,
     type = "h",
     lwd = 3,
     main = "PMF Binomial (n=15, p=0.4)",
     xlab = "k",
     ylab = "P(X=k)")

#Membandingkan histogram dengan PMF teoretis
# Histogram simulasi
hist(simulasi,
     breaks = seq(-0.5, 15.5, by = 1),
     probability = TRUE,
     main = "Binomial: Simulasi vs PMF Teoretis",
     xlab = "Jumlah sukses",
     ylab = "Probabilitas")

# Tambahkan PMF teoritis
points(x, pmf,
       pch = 16)

lines(x, pmf,
      type = "h",
      lwd = 3)