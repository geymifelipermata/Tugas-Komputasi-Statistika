#Nama : Geymi Feli Permata
#NIM : 3338250016
#Tugas 2 Komputasi Statistika

#Memasukkan data iris
data(iris)
#Lihat data
iris

#NO.1 : Tampilkan data Sepal.Length saja
iris$Sepal.Length

#NO.2 : Sebutkan tipe data tiap kolom
sapply(iris,class)

#NO.3 : Buat varibel baru "turunan"
library(dplyr) 
iris <- iris %>% 
  mutate(
    turunan = ifelse( Sepal.Width > 3, 
                      "Besar", 
                      "Kecil" )
    )

#Lihat hasilnya
head(iris)

#NO.4 : Ubah variabel turunan menjadi sepal
iris <- iris %>% 
  rename(sepal = turunan)

#Lihat hasilnya
head(iris)

#NO.5 : Ambil data dengan sepal bernilai besar dari species virginica
data_virginica_besar <- filter(iris,
                               Species == "virginica" & sepal == "Besar"
                               ) 

#Lihat hasilnya
print(data_virginica_besar)

#NO.6 : Cek jumlah species dalam data
species_unik <- unique(iris$Species) 

print(species_unik)

#Menghitung jumlah masing-masing species 
table(iris$Species)

#NO.7 : Pecah data iris menjadi 3 data frame khusus species tertentu
#Species setosa
iris_setosa <- filter( 
  iris, 
  Species == "setosa"
  )

#Species versicolor
iris_versicolor <- filter( 
  iris, 
  Species == "versicolor"
)

#Species virginica
iris_virginica <- filter( 
  iris, 
  Species == "virginica"
)

#Lihat hasil
head(iris_setosa) 
head(iris_versicolor) 
head(iris_virginica)

#NO.8 : Dari setiap data frame species, urutkan data berdasarkan Sepal.Width
#Species setosa
iris_setosa_urut <- arrange(
  iris_setosa, 
  Sepal.Width 
  ) 

print(iris_setosa_urut)

#Species versicolor
iris_versicolor_urut <- arrange(
  iris_versicolor, 
  Sepal.Width 
) 

print(iris_versicolor_urut)

#Species virginica
iris_virginica_urut <- arrange(
  iris_virginica, 
  Sepal.Width 
) 

print(iris_virginica_urut)
