CREATE DATABASE EX4;

USE EX4;

CREATE TABLE lop_hoc (
    ma_lop INT PRIMARY KEY AUTO_INCREMENT,
    ten_lop VARCHAR(50) NOT NULL
);

CREATE TABLE hoc_sinh (
    ma_hoc_sinh INT PRIMARY KEY AUTO_INCREMENT,
    ten_hoc_sinh VARCHAR(100) NOT NULL UNIQUE,
    diem DECIMAL(5, 2),
    ma_lop INT,
    FOREIGN KEY (ma_lop) REFERENCES lop_hoc(ma_lop)
);

CREATE INDEX idx_ten_hoc_sinh ON hoc_sinh(ten_hoc_sinh);

INSERT INTO lop_hoc VALUES(1, 'KHTN');
INSERT INTO lop_hoc VALUES(2, 'ATTN');

INSERT INTO hoc_sinh VALUES(1, 'Cuong', 10, 1);
INSERT INTO hoc_sinh VALUES(2, 'Giang', 9, 1);

INSERT INTO hoc_sinh VALUES(3, 'Thanh', 5, 2);


SELECT * FROM hoc_sinh;

