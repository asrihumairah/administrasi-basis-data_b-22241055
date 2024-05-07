-- NAMA : ASRIHUMAIRAH
-- NIM : 22241055
-- MODUL 1

-- Menggunakan database undikma_mart
use undikma_mart;
-- menggambil data nama_produk dari tabel ms_produk_dqlab
SELECT nama_produk FROM ms_produk_dqlab;

-- Menggambil lebih dari datu kolom 
SELECT nama_produk, harga FROM ms_produk_dqlab;
SELECT nama_produk,harga FROM ms_produk_dqlab;

-- Menggambil seluruh kolom tabel
SELECT * FROM ms_produk_dqlab;

-- Latihan 
-- 1. Mengambil kolom kode_produk, nama_produk dari tabel ms_produk
SELECT kode_produk,nama_produk FROM ms_produk_dqlab;

-- 2. Menggambil dari seluruh kolom tabel tr_penjualan 
SELECT * FROM tr_penjualan_dqlab;

-- ALIAS & PREFIX
-- Contoh PREFIX 
SELECT ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

SELECT undikma_mart.ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- Contoh ALIAS didalam kolom
SELECT nama_produk as np FROM ms_produk_dqlab;
SELECT nama_produk np FROM ms_produk_dqlab;

-- Contoh ALIAS didalam tabel
SELECT mpl.nama_produk FROM ms_produk_dqlab as mpl;

-- CASE 1 
SELECT nama_pelanggan, alamat FROM ms_pelanggan_dqlab;

-- CASE 2
SELECT nama_produk, harga FROM ms_produk_dqlab;

