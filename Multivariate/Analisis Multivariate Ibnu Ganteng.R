# Membuat data frame sampel
sampel <- data.frame(
  X1.1.j.U1 = c(6, 6, 19, 8, 11, 34, 28, 71, 43, 22, 16, 26, 39, 28, 21, 44, 18, 17, 23, 24),
  X1.2.j.U2 = c(27, 22, 64, 44, 30, 74, 26, 142, 54, 30, 17, 32, 54, 24, 32, 71, 22, 12, 49, 20),
  X1.3.j.U3 = c(26, 15, 9, 11, 24, 23, 22, 54, 21, 20, 16, 18, 92, 19, 22, 20, 21, 53, 27, 23),
  X2.1.j.U1 = c(25, 28, 36, 35, 15, 44, 42, 54, 34, 29, 71, 22, 12, 49, 20, 44, 42, 54, 34, 29),
  X2.2.j.U2 = c(15, 13, 22, 28, 31, 64, 30, 64, 58, 21, 15, 13, 22, 28, 31, 16, 18, 92, 19, 22),
  X2.3.j.U3 = c(21, 23, 32, 33, 14, 19, 73, 29, 33, 51, 71, 22, 12, 49, 20, 19, 73, 29, 33, 51)
)

# Memberikan nama kolom pada data frame
colnames(sampel) <- c("X1,1,j (U1)", "X1,2,j (U2)", "X1,3,j (U3)", "X2,1,j (U1)", "X2,2,j (U2)", "X2,3,j (U3)")

# Menampilkan data frame sampel
sampel
D_A <- sampel[, "X1,1,j (U1)"] - sampel[, "X1,2,j (U2)"] - sampel[, "X1,3,j (U3)"]
D_B <- sampel[, "X2,1,j (U1)"] - sampel[, "X2,2,j (U2)"] - sampel[, "X2,3,j (U3)"]
selisih <- data.frame(D_A, D_B)
selisih
# Menghitung nilai rata-rata dari masing-masing array
rata_u1 <- data.frame(mean(sampel$`X1,1,j (U1)`))
rata_u2 <- data.frame(mean(sampel$`X1,2,j (U2)`))
rata_u3 <- data.frame(mean(sampel$`X1,3,j (U3)`))
rata_u4 <- data.frame(mean(sampel$`X2,1,j (U1)`))
rata_u5 <- data.frame(mean(sampel$`X2,2,j (U2)`))
rata_u6 <- data.frame(mean(sampel$`X2,3,j (U3)`))

# Menampilkan nilai rata-rata dari masing-masing array
rata_u1
rata_u2
rata_u3
rata_u4
rata_u5
rata_u6

# Menghitung nilai rata-rata dari array D_A dan D_B
rata2_D_A <- mean(D_A)
rata2_D_B <- mean(D_B)

# Membuat data frame dari hasil perhitungan
hasil_rata_DA_DB <- data.frame(
  "Rata-rata D_A" = rata2_D_A,
  "Rata-rata D_B" = rata2_D_B
)

# Menampilkan hasil perhitungan
hasil_rata_DA_DB

# Menghitung standar deviasi dari masing-masing array
sd_array <- apply(sampel, 2, sd)

# Menghitung standar deviasi D_A dan D_B
sd_D_A <- sd(sampel$`X1,1,j (U1)` - sampel$`X1,2,j (U2)` - sampel$`X1,3,j (U3)`)
sd_D_B <- sd(sampel$`X2,1,j (U1)` - sampel$`X2,2,j (U2)` - sampel$`X2,3,j (U3)`)

# Menghitung t-statistik
t_stat <- (mean(D_A) - mean(D_B)) / (sqrt(var(D_A)/length(D_A) + var(D_B)/length(D_B)))

# Menghitung derajat bebas
df <- length(D_A) + length(D_B) - 2

# Menghitung p-value
p_value <- 2 * pt(-abs(t_stat), df)

# Membuat dataframe hasil uji hipotesis
hasil_uji_Hipotesis <- data.frame(
  Standar_Deviasi_Array = sd_array,
  Standar_Deviasi_D_A = sd_D_A,
  Standar_Deviasi_D_B = sd_D_B,
  T_Statistik = t_stat,
  Derajat_Bebas = df,
  P_Value = p_value,
  Hasil_Uji = ifelse(p_value > 0.05, "Tolak H0", "Gagal Tolak H0")
)

hasil_uji_Hipotesis

