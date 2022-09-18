#!/bin/bash

echo " Operasi Perhitungan Sederhana (Percabangan) "
echo " 1. Penjumlahan "
echo " 2. Pengurangan "
echo " 3. Perkalian "
echo " 4. Pembagian "
echo " 5. mod "
read -p " Pilih Operasi Perhitungan : " pilih
read -p " Masukan Nilai A : " A
read -p " Masukan Nilai B : " B

case $pilih in

1)
	Menu="Penjumlahan"
	Hasil=$((A+B))
;;
2)
	Menu="Pengurangan"
	Hasil=$((A-B))
;; 
3)
	Menu="Perkalian"
	Hasil=$((A*B))
;; 
4)
	Menu="Pembagian"
	Hasil=$((A/B))
;;
5)
        Menu="Mod"
        Hasil=$((A%B))
;;
  
esac
echo " Hasil Dari Operasi $Menu : $Hasil "




