CREATE DATABASE EX5;

USE EX5;
CREATE TABLE lop_hoc (
    ma_lop INT PRIMARY KEY AUTO_INCREMENT,
    ten_lop VARCHAR(100) NOT NULL
);
CREATE TABLE hoc_sinh (
    ma_hoc_sinh INT PRIMARY KEY AUTO_INCREMENT,
    ten_hoc_sinh VARCHAR(100) NOT NULL,
    diem DECIMAL(5, 2),
    ma_lop INT,
    FOREIGN KEY (ma_lop) REFERENCES lop_hoc(ma_lop)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

INSERT INTO lop_hoc VALUES(1, 'KHTN');
INSERT INTO lop_hoc VALUES(2, 'ATTN');

INSERT INTO hoc_sinh VALUES(1, 'Cuong', 10, 1);
INSERT INTO hoc_sinh VALUES(2, 'Giang', 9, 1);

INSERT INTO hoc_sinh VALUES(3, 'Thanh', 5, 2);

UPDATE lop_hoc SET ma_lop = 3 WHERE ten_lop = 'ATTN'

SELECT * FROM hoc_sinh;




