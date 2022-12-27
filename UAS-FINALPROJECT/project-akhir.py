import random
# library that we use in order to choose
# on random words from a list of words

nama = input("Siapa namamu:")

print('\033[1m', '\33[34m')
print('='*82)
print(" Selamat datang di game tebak kata ".center(82,'='))
print('='*82)
print(' '*82)
print(f''' Silahkan membaca aturan-aturan dibawah ini '''.center(82,' '))
print(' '*82)
print('='*82)
print(f''' Aturan 1: Kamu hanya boleh menebak kata yang sudah disediakan '''.center(82,'='))
print(" Kata yang ditebak : Algoritma, Programming, Data, Matematika, Statistika ".center(82,'='))
print(" Kata yang ditebak : Sistem, Operasi, Python, Bash, Aljabar, Linear, Regresi ".center(82,'='))
print("="*82)
print(f''' Aturan 2: Kamu hanya memiliki 5 kesempatan untuk menebaknya '''.center(82,'='))
print(f''' Kamu dapat langsung menebak kata tersebut '''.center(82,'='))
print(f''' Jika kamu ragu silahkan menebak masing-masing hurufnya '''.center(82,'='))
print(f''' Perhatikan huruf besar dan kecilnya dalam menebak '''.center(82,'='))
print("="*82)
print(f''' Jika kamu berhasil menebak, kamu menang! '''.center(82,'='))
print(f''' Jika kamu gagal menebak, silahkan mencoba kembali! '''.center(82,'='))
print('='*82)
print('='*82)
print(' '*82)
print(f''' SEMOGA BERHASIL '''.center(82,'='))
print(' '*82)


# Disini diminta kepada user untuk memasukan nama
 
 
kata_kata = ['Algoritma', 'Programming', 'Data', 'Matematika',
         'Statistika', 'Sistem', 'Operasi', 'Python',
         'Bash', 'Aljabar', 'Linear', 'Regresi']
 
# Fungsi akan memilih salah satu secara acak
# kata yang ditebak berdasarkan parameter/list kata_kata
kata = random.choice(kata_kata)
 
 
print("AYO BERMAIN DENGAN GEMBIRA!")
 
tebakan = ''
 
#Memiliki kesempatan menebak
kesempatan = 5
 
 
while kesempatan > 0:
 
    # Menghitung jumlah yang gagal
    failed = 0
 
    # Semua karakter dari kata yang diinputkan diambil satu persatu
    for char in kata:
 
        # membandingkan huruf yang ditebak apakah sesuai dengan huruf/kata pada list
        if char in tebakan:
            print(char, end=" ")
 
        else:
            print("_")
 
            # Jika user gagal menebak  maka akan dihitung setiap kegagalannya
            failed += 1


    if failed == 0:
        # user akan memenangkan game tebak kata
        # jika user berhasil menebak selagi kesempatan tidak mencapai 0
        # dan program akan memberikan 'Kamu berhasil menebak!' kepadamu
        print("--> Kamu berhasil menebak !")
        print("+=======================================================+")
        print("|           *       *       *  *  * *    *              |")
        print("|            *     * *     *   *  *  *   *              |")
        print("|             *   *   *   *    *  *   *  *              |")
        print("|              * *     * *     *  *    * *              |")
        print("|               *       *      *  *     **              |")
        print("+=======================================================+")
 
        # print dibawah ini akan menghasilkan kata yang benar
        print("|  YEAAYY KAMU BERHASIL MENEBAK  |",kata)
        print("+=======================================================+")
        break
 
    # Jika pengguna memasukkan huruf/kata  yang salah
    # Maka akan meminta kepada user memasukkan huruf/kata lain
    print()
    tebak = input("HAYO TEBAK HURUFNYA:")
 
    # Setiap kata/huruf yang diinput maka akan disimpan dalam tebakan
    tebakan += tebak
 
    # periksa input dengan kata yang berada pada list kata_kata
    if tebak not in kata:
 
        kesempatan -= 1
 
        # Jika kata/huruf yang dimasukkan tidak cocok
        # Maka kamu akan diberitahukan kamu "SALAH"
        print("SALAH")
 
        # dibawah ini akan mencetak jumlah kesempatan yang tersisa dalam menebak
        print("Kamu memiliki", + kesempatan, 'kesempatan dalam menebak')
 
        if kesempatan == 0:
            print("+==========================================+")
            print("|    *          * *    * * * *  * * * *    |")
            print("|    *        *     *  *        *          |")
            print("|    *        *     *  * * * *  * * * *    |")
            print("|    *        *     *        *  *          |")
            print("|    * * * *    * *    * * * *  * * * *    |")
            print("+==========================================+")
            print("|  yah tebakanmu salah silahkan coba lagi  |")
            print("+==========================================+")
