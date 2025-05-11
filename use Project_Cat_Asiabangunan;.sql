use Project_Cat_Asiabangunan;

SELECT*FROM Pembelian;

-- Menentukan Total Pembelian 
SELECT sum(total)
FROM Pembelian;

--Menentukan Total Transaksi
SELECT COUNT(Transaksi)
FROM Pembelian;

--Menentukan Total Jenis Item tanpa Duplikat
SELECT count(distinct `Nama Barang`)
FROM Pembelian;


--Menentukan Total QTY item yang dibeli
SELECT
    SUM(item)
FROM Pembelian

--Menentukan berpa banyak transaksi per bulan
SELECT 
    MONTH(Transaksi) AS Bulan,
    COUNT(*) AS JumlahTransaksi
FROM 
    Pembelian
GROUP BY 
    YEAR(Transaksi), MONTH(Transaksi)
ORDER BY 
    Bulan;


--Menentukan total pembelian perbulan
SELECT 
    MONTH(Transaksi) AS Bulan,
    SUM(total) AS JumlahTransaksi
FROM 
    Pembelian
GROUP BY 
    MONTH(Transaksi)
ORDER BY 
    Bulan;

--Menentukan Rata-rata Pembelian perbulan
SELECT
    ROUND(AVG(JumlahTransaksi),0)
FROM(SELECT 
    MONTH(Transaksi) AS Bulan,
    SUM(total) AS JumlahTransaksi
FROM 
    Pembelian
GROUP BY 
    MONTH(Transaksi)
) as def;

--menentukan rata-rata transaksi item perbulan
SELECT
    ROUND(AVG(JumlahTransaksi),0)
FROM(SELECT 
    MONTH(Transaksi) AS Bulan,
    COUNT(*) AS JumlahTransaksi
FROM 
    Pembelian
GROUP BY 
    MONTH(Transaksi)
) as def;


