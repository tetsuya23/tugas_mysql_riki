CREATE TABLE transaksi (
    id_transaksi INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pelanggan INT(11) NOT NULL,
    id_obat INT(11) NOT NULL,
    jumlah INT(11) NOT NULL,
    tanggal DATE NOT NULL,
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan),
    FOREIGN KEY (id_obat) REFERENCES obat(id_obat)
);
SELECT * FROM transaksi;
UPDATE transaksi SET jumlah = 5 WHERE id_transaksi = 1;
DELETE FROM transaksi WHERE id_transaksi = 1;
SELECT transaksi.id_transaksi, pelanggan.nama_pelanggan, obat.nama_obat, transaksi.jumlah, transaksi.tanggal
FROM transaksi
JOIN pelanggan ON transaksi.id_pelanggan = pelanggan.id_pelanggan
JOIN obat ON transaksi.id_obat = obat.id_obat;
