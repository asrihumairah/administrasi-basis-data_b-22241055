-- Nama : Asrihumairah
-- Nim  : 22241055
-- Modul 2

-- Menggunakan data base 
use undikma_mart;
-- Nilai Literial Angka 77;

 SELECT 77;
 SELECT 77 as angka;

-- Menampilkan beberapa nilai literial dengan tipe data berbeda 
SELECT 77 as angka,
true as nilai_logika,
'UNDIKMA' as teks;

-- NUL
-- Menampilkan NULL
SELECT NULL as kosong;

-- OPERATOR MATEMATIKA
-- kalkulasi ekpresi matematika 
SELECT 5%2 as Sisa_bagi,
5/2 as hasil_bagi_1,
5 DIV 2 as hasil_bagi2; 

-- Latihan mandiri 1
SELECT 4*2 as hasil_kali_,
(4*8)%7 as sisa_bagi,
(4*8) MOD 7 sisa_bagi;

-- menampilkan total belanja 
SELECT qty*harga AS Total_belanja
FROM tr_penjualan_dqlab;

-- OPERATOR PERBANDINGAN 
-- melakukan operator perbandingan 
SELECT 5 = 5, 5<> 5, 5<> 4, 5!= 4, 5> 4;

-- Latihan mandiri 2 
SELECT 1 = 1, 1 = 2, 5 >= 5, 5.2 = 5.20000, NULL = 1, NULL = NULL;


-- FUNGSI
SELECT pow(3,2),
round(3.14), round(3.54),
round(3.155,1), round(3.155,2),
floor(4.28), floor(4.78),
ceiling(4.39), ceiling(4.5);

SELECT now(), year(now()),
datediff(now(), '2004-04-10'), day('2004-04-10');

-- Latihan mandiri 3 
SELECT datediff('2004-04-10', NOW()),
year('2004-04-10'),
month('2004-04-10'),
day('2004-04-10'),
year(now());

-- selisih hari diantara tgl penjualan teralhir dengan hari ini
SELECT datediff(now(), tgl_transaksi) FROM tr_penjualan_dqlab; 

-- filtering with WHERE 
SELECT nama_produk, qty FROM tr_penjualan_dqlab WHERE  qty > 3;










