CREATE DATABASE nha_truong;

USE nha_truong;

CREATE TABLE hoc_sinh (
    ten_hoc_sinh VARCHAR(100),
    diem DECIMAL(2, 1)
);

INSERT INTO hoc_sinh VALUES('Dang Quoc Cuong', 9.5);
INSERT INTO hoc_sinh VALUES('Nguyen Huu Lam Giang', 9.0);
INSERT INTO hoc_sinh VALUES('Tran Diep Chi', 5);
INSERT INTO hoc_sinh VALUES('Nguyen Trong Tat Thanh', 3);

SELECT * FROM hoc_sinh;

SELECT * FROM hoc_sinh
WHERE diem > 3;

SELECT * FROM hoc_sinh
LIMIT 2;

SELECT * FROM hoc_sinh
ORDER BY diem;