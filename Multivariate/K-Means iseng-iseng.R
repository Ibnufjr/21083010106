# Data
data <- data.frame(
  kab_kota = c('Ponorogo', 'Trenggalek', 'Tulungagung', 'Blitar', 'Kediri', 'Malang', 'Lumajang', 'Jember', 'Banyuwangi', 'Bondowoso', 'Situbondo', 'Probolinggo'),
  luas_lahan = c(66.693, 31.136, 49.230, 50.577, 51.083, 65.597, 72.552, 162.619, 113.609, 61.330, 48.902, 59.130),
  produksi = c(402.047, 182.848, 259.581, 289.494, 281.392, 464.498, 387.168, 964.001, 706.419, 329.557, 290.954, 311.258)
)

# Inisialisasi centroid
centroids <- data.frame(
  luas_lahan = c(162.619, 50.577, 49.230),
  produksi = c(964.001, 289.494, 259.581)
)

# Menghitung jarak Euclidean antara setiap data dan centroid
distances <- matrix(NA, nrow = nrow(data), ncol = nrow(centroids))
for (i in 1:nrow(data)) {
  for (j in 1:nrow(centroids)) {
    distances[i, j] <- sqrt((data$luas_lahan[i] - centroids$luas_lahan[j])^2 + (data$produksi[i] - centroids$produksi[j])^2)
  }
}

# Jumlah klaster yang diinginkan
k <- 2

# Melakukan klasterisasi dengan K-Means
set.seed(123)  # Untuk hasil yang konsisten
kmeans_result <- kmeans(distances, centers = k)

# Mendapatkan label klaster untuk setiap data
labels <- kmeans_result$cluster

# Menampilkan hasil klasterisasi
for (i in 1:length(labels)) {
  cat("Data", data$kab_kota[i], "masuk ke klaster", labels[i], "\n")
}

