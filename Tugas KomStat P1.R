#SOAL 1
#Vektor numerik
vek_num <- c(7.7, 5.4, 6.9, 1.2, 3.5)
print(vek_num)

#Vektor integer
vek_int <- c(2L, 5L, 3L, 6L, 9L)
print(vek_int)

#Vektor logical
vek_log <- c(TRUE, TRUE, FALSE, TRUE, FALSE)
print(vek_log)

#Vektor character
vek_char <- c("Hai", "Saya", "Geymi", "Feli", "Permata")
print(vek_char)

#SOAL 2
#Matriks ukuran 4x4
matr <- matrix(1:16, nrow = 4, ncol = 4, byrow = TRUE)
matr

#SOAL 3
#Array ukuran 4D
arr <- array(1:24, dim = c(2, 3, 2, 2))
arr

#SOAL 4
#Data frame
df <- data.frame(
  Buah = c("Mangga", "Durian", "Apel", "Anggur"),
  Qty = c(3, 5, 1, 4),
  Matang = c(TRUE, FALSE, TRUE, TRUE),
  Manis = c(FALSE, FALSE, TRUE, TRUE)
)
df

#SOAL 5
#Membuat list
list_isi4 <- list(
  mat = matrix(17:32, nrow = 4, ncol = 4, byrow = TRUE),
  arr = array(1:24, dim = c(2, 3, 2, 2)),
  df = data.frame(NIM = 7:9, UTS = c(100, 75, 85)),
  vb = c(5, 2, 7, 9, 11)
)

list_isi5 <- list(
  vb = c(7, 5, 1, 2, 8),
  vc = matrix(1:5, ncol = 1),
  mat = matrix(1:16, nrow = 4, ncol = 4, byrow = TRUE),
  df = data.frame(
    Buah = c("Mangga", "Durian", "Apel", "Anggur"),
    Qty = c(3, 5, 1, 4),
    Matang = c(TRUE, FALSE, TRUE, TRUE),
    Manis = c(FALSE, FALSE, TRUE, TRUE)
  ),
  list4 = list_isi4
)
list_isi5