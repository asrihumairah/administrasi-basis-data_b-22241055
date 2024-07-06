-- NAMA: ASRIHUMAIRAH
-- KELAS: PTI B 
-- NIM: 22241055

USE undikma_mart;

-- Soal UAS administrasi basis data 
-- no 1
-- Tampilkan hanya 5 produk yang memiliki pendapatan (Revenue) penjualan terbanyak
SELECT nama_produk, SUM(qty * (harga - (diskon_persen / 100) * harga)) AS revenue
FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY revenue DESC
LIMIT 5;
 
-- SOAL 2
-- Tampilkan hanya 3 kategori produk, dan total pendapatan (Revenue) yang berstatus Target Achived dengan ketentuan
-- Jika revenue >= 900000 = Target achived
-- Jika revenue < 900000 = Less Performance
-- Jika tidak keduanya = 900000 = Follow UP
-- Pakai CASE dan JOIN
SELECT p.kategori_produk, SUM(t.qty * (t.harga - t.diskon_persen)) AS revenue,
       CASE 
           WHEN SUM(t.qty * (t.harga - t.diskon_persen)) >= 900000 THEN 'Target Achieved'
           WHEN SUM(t.qty * (t.harga - t.diskon_persen)) < 900000 THEN 'Less Perfomance'
           ELSE 'Follow Up'
       END AS remark
FROM tr_penjualan_dqlab AS t
JOIN ms_produk_dqlab p ON t.kode_produk = p.kode_produk
GROUP BY p.kategori_produk
HAVING remark = 'Target Achieved'
ORDER BY revenue DESC
LIMIT 3;

-- No 3
-- Jika hari ini adalah tanggal 30 Juni 2020, maka berikan informasi 3 nama produk 
-- yang paling lama tidak dibeli oleh pelanggan (dalam hari) wajib menggunakan JOIN

SELECT mpd.nama_produk, DATEDIFF('2020-06-30', IFNULL(MAX(tp.tgl_transaksi), '2020-06-30')) AS hari_tidak_dibeli
FROM ms_produk_dqlab AS mpd
LEFT JOIN tr_penjualan_dqlab AS tp ON mpd.kode_produk = tp.kode_produk
GROUP BY mpd.nama_produk
ORDER BY hari_tidak_dibeli DESC
LIMIT 3;