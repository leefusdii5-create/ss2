CREATE DATABASE bt5;
USE bt5;

CREATE TABLE wallets (
    id_vi INT PRIMARY KEY,
    id_khach_hang INT,
    so_du DECIMAL(18,2)
);

CREATE TABLE transactions (
    id_giao_dich INT PRIMARY KEY,
    id_vi INT,
    loai_giao_dich VARCHAR(20),
    so_tien DECIMAL(18,2),
    FOREIGN KEY (id_vi) REFERENCES wallets(id_vi)
);